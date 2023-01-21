import 'package:flutter/material.dart';
import 'package:appointment/models/agent.dart';
import 'package:appointment/utils/colors.dart';
import 'package:image_network/image_network.dart';
import 'package:flutter/foundation.dart';

class TopAgentCard extends StatelessWidget {
  const TopAgentCard({
    super.key,
    required this.agent,
  });

  final Agent agent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        //--------------------------------------------
        //------LIKE, REVIEWS AND MESSAGE BUTTONS
        //-------------------------------------------
        _WhiteBackground(
          agent: agent,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: 125,
            child: Stack(
              children: <Widget>[
                //----------------------------------
                //-----BLUE BACKGROUND
                //---------------------------------
                Container(
                  width: 280,
                  margin: const EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.only(
                    left: 120,
                    bottom: 5,
                    right: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [
                        MdAppColors.kLightBlue,
                        MdAppColors.kBlue,
                      ],
                    ),
                  ),
                  child: _DoctorInformation(agent: agent),
                ),
                //-----------------------------
                //------PNG DOCTOR IMAGE
                //-----------------------------
                Positioned(
                  bottom: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                    ),
                    child:ImageNetwork(image:agent.pngPhotoUrl!,
                      borderRadius: BorderRadius.circular(50),
                      width: 115,
                      height: 115,                      
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _DoctorInformation extends StatelessWidget {
  const _DoctorInformation({
    required this.agent,
  });

  final Agent agent;

  @override
  Widget build(BuildContext context) {
    final countTextStyle = TextStyle(
      color: Colors.white.withOpacity(.8),
      fontWeight: FontWeight.w600,
      height: 1,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //--------------------------------------------
        //------NAME DOCTOR AND SPECIALIZATION
        //--------------------------------------------
        Text(
          '${agent.name}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          agent.agentCategory!.nameCategory!,
          style: const TextStyle(
            height: 1,
            color: Colors.white70,
          ),
        ),
        const Spacer(),
        //-----------------------------------------------
        //-----INFORMATION
        //-----------------------------------------------
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //-------------------------------
            //-----PATIENTS COUNT
            //-------------------------------
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Опыт',
                  style: TextStyle(
                    color: Colors.white.withOpacity(.8),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  agent.patients.toString(),
                  style: countTextStyle,
                ),
              ],
            ),
            //-------------------------------
            //-----RATE
            //-------------------------------
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Рейтинг',
                  style: TextStyle(
                    color: Colors.white.withOpacity(.8),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      agent.rate.toString(),
                      style: countTextStyle,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 16,
                    )
                  ],
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

class _WhiteBackground extends StatelessWidget {
  const _WhiteBackground({
    required this.agent,
  });
  final Agent agent;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.fromLTRB(10, 70, 10, 20),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.2),
            blurRadius: 20,
            offset: const Offset(-5, 5),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildIconButton(
            iconData: Icons.favorite,
            label: '${agent.likes} лайков',
          ),
          _buildIconButton(
            iconData: Icons.comment,
            label: '${agent.comments} отзывов',
          ),
          _buildIconButton(
            iconData: Icons.send,
            label: 'Написать',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton({
    required String label,
    required IconData iconData,
    VoidCallback? onTap,
  }) {
    return Row(
      children: [
        Icon(
          iconData,
          color: MdAppColors.kDarkTeal,
          size: 16,
        ),
        const SizedBox(width: 3),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: MdAppColors.kDarkTeal,
          ),
        ),
      ],
    );
  }
}