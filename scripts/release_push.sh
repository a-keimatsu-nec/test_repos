#!/bin/bash

# git���[�U�ݒ�
git config --global user.email "a-keimatsu@cp.jp.nec.com" #�R�~�b�g���[�U�̗L���ȃ��[���A�h���X
git config --global user.name "Akitsugu Keimatsu" #�R�~�b�g���[�U�̖��O

# �����[�X�o�[�W������
CI_RELEASE_VERSION = ` date + "v%Y%m%d%H%M%S" `

# �����[�X�u�����`��
CI_RELEASE_BRANCH = "release/${CI_RELEASE_VERSION}"

# �����[�g���|�W�g��
CI_REMOTE_REPOSITORY = "git@github.com:${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME}.git"

# �����[�X�u�����`�쐬
git checkout -b ${ CI_RELEASE_BRANCH }

#�ύX�t�@�C���������ׂĒǉ�
git add --all :/build/

#�R�~�b�g
git commit -m "[auto] release branch (${CI_RELEASE_VERSION})"

#�����[�g�Ƀv�b�V��
git push ${ CI_REMOTE_REPOSITORY } ${ CI_RELEASE_BRANCH }

