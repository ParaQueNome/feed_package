import 'dart:io';
import 'package:feed_package/src/feed/data/models/feed_model/feed_model.dart';
import 'package:feed_package/src/feed/presentation/providers/feed_service_provider.dart';
import 'package:feed_package/src/feed/presentation/providers/inser_post_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class PostFormFeedWidget extends ConsumerStatefulWidget {
  const PostFormFeedWidget({super.key});

  @override
  ConsumerState createState() => _PostFormWidgetState();
}

class _PostFormWidgetState extends ConsumerState<PostFormFeedWidget> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    if (_selectedImage == null) {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _selectedImage = File(pickedFile.path);
        });
      }
    } else {
      // Exibir feedback se a imagem já estiver selecionada
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Você já selecionou uma imagem.')),
      );
    }
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate() && _selectedImage != null) {
      try {
        final title = _titleController.text;
        final description = _descriptionController.text;
        final now = DateTime.now();
        final data =
            '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
        final hora =
            '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';

        final feed = FeedModel(
          titulo: title,
          descricao: description,
          data: data,
          hora: hora,
          fkUserId: 3,
          url: null,
        );

        await ref.read(
            insertPostServiceProvider(file: _selectedImage!, feed: feed)
                .future);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Post enviado com sucesso!')),
        );

        Navigator.of(context).pop(true);
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erro ao enviar o post: $e')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor, preencha todos os campos!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Crie sua postagem',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  onTap: _pickImage,
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceDim,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
                    child: _selectedImage == null
                        ? Icon(
                            Icons.add_a_photo,
                            size: 50,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        : Image.file(
                            _selectedImage!,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: _titleController,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: const InputDecoration(
                    labelText: 'Titulo',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                  ),
                  maxLength: 65,
                  maxLines: null,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira um título';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _descriptionController,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: const InputDecoration(
                    labelText: 'Descrição',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    //border radius
                  ),
                  maxLines: null,
                  maxLength: 1000,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira uma descrição';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed:
                      ref.watch(uploadStateProvider) ? null : _submitForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: ref.watch(uploadStateProvider)
                      ? CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(
                            Theme.of(context).colorScheme.primary,
                          ),
                        )
                      : Text(
                          'Postar',
                          //color
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
