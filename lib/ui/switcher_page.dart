import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:devstack/bloc/switcher_bloc.dart';
import 'package:devstack/entities/switcher_entity.dart';

class SwitcherPage extends StatelessWidget {
  const SwitcherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        title: const Padding(
          padding: EdgeInsets.only(top: 50, left: 24, bottom: 16),
          child: Text(
            'List',
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: BlocBuilder<SwitcherBloc, SwitcherState>(builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
          updated: (switchersList) => RefreshIndicator(
            onRefresh: () async => context
                .read<SwitcherBloc>()
                .add(const SwitcherEvent.updateFromFb()),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: switchersList.length,
              itemBuilder: (context, index) => Tile(
                switcherEntity: switchersList[index],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({
    super.key,
    required this.switcherEntity,
  });

  final SwitcherEntity switcherEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          color: Color.fromRGBO(255, 255, 255, 1),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 4.0),
              blurRadius: 4.0,
              color: Color.fromRGBO(182, 188, 196, 0.25),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 24,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(245, 245, 245, 1),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(235, 242, 252, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 16,
                  bottom: 16,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      switcherEntity.name,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'ID:${switcherEntity.id}',
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(143, 148, 169, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Switch name',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  SwitcherSwitch(switcherEntity: switcherEntity),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 35),
              child: SwitcherRadio(switcherEntity: switcherEntity),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 35, bottom: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SwitcherCheck(switcherEntity: switcherEntity),
                  const SizedBox(width: 9),
                  const Text(
                    'Checkbox',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SwitcherCheck extends StatefulWidget {
  const SwitcherCheck({
    super.key,
    required this.switcherEntity,
  });

  final SwitcherEntity switcherEntity;

  @override
  State<SwitcherCheck> createState() => _SwitcherCheckState();
}

class _SwitcherCheckState extends State<SwitcherCheck> {
  late bool sw;

  @override
  void initState() {
    sw = widget.switcherEntity.switch3;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant SwitcherCheck oldWidget) {
    sw = widget.switcherEntity.switch3;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 16,
      width: 16,
      child: Checkbox(
        activeColor: const Color.fromRGBO(49, 172, 106, 1),
        value: sw,
        onChanged: (value) {
          context.read<SwitcherBloc>().add(
                SwitcherEvent.changeSwitch(
                  widget.switcherEntity.copyWith(switch3: value!),
                ),
              );
          setState(() {
            sw = value;
          });
        },
      ),
    );
  }
}

enum RadioButt { radio1, radio2 }

class SwitcherRadio extends StatefulWidget {
  const SwitcherRadio({
    super.key,
    required this.switcherEntity,
  });

  final SwitcherEntity switcherEntity;

  @override
  State<SwitcherRadio> createState() => _SwitcherRadioState();
}

class _SwitcherRadioState extends State<SwitcherRadio> {
  late RadioButt _radioButt;
  late bool sw;

  @override
  void didUpdateWidget(covariant SwitcherRadio oldWidget) {
    sw = widget.switcherEntity.switch2;
    _radioButt = sw ? RadioButt.radio1 : RadioButt.radio2;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    sw = widget.switcherEntity.switch2;
    _radioButt = sw ? RadioButt.radio1 : RadioButt.radio2;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 14,
          width: 14,
          child: Radio<RadioButt>(
            activeColor: const Color.fromRGBO(49, 172, 106, 1),
            value: RadioButt.radio1,
            groupValue: _radioButt,
            onChanged: (value) {
              context.read<SwitcherBloc>().add(
                    SwitcherEvent.changeSwitch(
                      widget.switcherEntity.copyWith(switch2: !sw),
                    ),
                  );
              setState(() {
                _radioButt = value!;
              });
            },
          ),
        ),
        const SizedBox(width: 9),
        const Text(
          'Radio 1',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(width: 25),
        SizedBox(
          height: 14,
          width: 14,
          child: Radio<RadioButt>(
            activeColor: const Color.fromRGBO(49, 172, 106, 1),
            value: RadioButt.radio2,
            groupValue: _radioButt,
            onChanged: (value) {
              context.read<SwitcherBloc>().add(
                    SwitcherEvent.changeSwitch(
                      widget.switcherEntity.copyWith(switch2: !sw),
                    ),
                  );
              setState(() {
                _radioButt = value!;
              });
            },
          ),
        ),
        const SizedBox(width: 9),
        const Text(
          'Radio 2',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class SwitcherSwitch extends StatefulWidget {
  const SwitcherSwitch({
    super.key,
    required this.switcherEntity,
  });

  final SwitcherEntity switcherEntity;

  @override
  State<SwitcherSwitch> createState() => _SwitcherSwitchState();
}

class _SwitcherSwitchState extends State<SwitcherSwitch> {
  late bool sw;

  @override
  void initState() {
    sw = widget.switcherEntity.switch1;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant SwitcherSwitch oldWidget) {
    sw = widget.switcherEntity.switch1;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: FittedBox(
        fit: BoxFit.contain,
        child: CupertinoSwitch(
            activeColor: const Color.fromRGBO(49, 172, 106, 1),
            value: sw,
            onChanged: (value) {
              context.read<SwitcherBloc>().add(
                    SwitcherEvent.changeSwitch(
                      widget.switcherEntity.copyWith(switch1: value),
                    ),
                  );
              setState(() {
                sw = value;
              });
            }),
      ),
    );
  }
}
