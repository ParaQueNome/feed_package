import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../presentation/providers/mural_provider.dart';
import '../../../feed/presentation/providers/inser_post_state_provider.dart';
import '../../data/models/mural_model.dart';

class PostFormMuralWidget extends ConsumerStatefulWidget {
  const PostFormMuralWidget({super.key});

  @override
  ConsumerState createState() => _PostFormWidgetState();
}

class _PostFormWidgetState extends ConsumerState<PostFormMuralWidget> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  int _colorController = 0;

  final List<Color> colors = [
    Colors.purple,
    Colors.lightGreen,
    Colors.orange,
    Colors.blue,
    Colors.red,
    Colors.pinkAccent,
  ];

  final List<String> colorNames = [
    "Pedidos",
    "Agenda",
    "Avisos",
    "Eventos",
    "Urgente",
    "Comemorações",
  ];

  Future<void> _submitForm() async {
    ref.read(uploadStateProvider.notifier).startUpload();
    try {
      final title = _titleController.text;
      final description = _descriptionController.text;
      final now = DateTime.now();
      final data =
          '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
      final hora =
          '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
      final corValor = _colorController;
      final mural = MuralModel(
        titulo: title,
        descricao: description,
        data: data,
        hora: hora,
        fkUserId: 3,
        cor: corValor,
      );

      await ref.read(insertPostProvider(mural).future);

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Card enviado com sucesso!')));

      Navigator.of(context).pop(true);
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Erro ao enviar o post: $e')));
    } finally {
      ref.read(uploadStateProvider.notifier).finishUpload();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Novo Card Mural',
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
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
                SizedBox(height: 16),
                TextFormField(
                  controller: _titleController,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: 'Título',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                  maxLength: 16,
                  maxLines: 1,
                  minLines: 1,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira um título';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _descriptionController,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: 'Descrição',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                  maxLines: 3,
                  minLines: 1,
                  maxLength: 95,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira uma descrição';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Escolha a cor do Cartão",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      for (int i = 0; i < colors.length; i++)
                        RadioListTile<int>(
                          title: Row(
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: colors[i],
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(width: 12),
                              Text(colorNames[i]),
                            ],
                          ),
                          value: i,
                          groupValue: _colorController,
                          onChanged: (value) {
                            setState(() {
                              _colorController = value!;
                            });
                          },
                          activeColor: colors[i],
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
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
                  child:
                      ref.watch(uploadStateProvider)
                          ? CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(
                              Theme.of(context).colorScheme.primary,
                            ),
                          )
                          : Text('Enviar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
