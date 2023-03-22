# 描述

自己手动搭建的 monorepo 系统 使用的是 lerna

### 安装

```
yarn

chmod +x scripts/**/*.sh  // 给.sh文件添加权限
```

### 启动

```
yarn start
```

### 打包

```
yarn build
```

### Lint

```
yarn lint
```

# 搭建过程中注意事项

-   运行 chmod +x scripts/\*_/_.sh // 给.sh 文件添加权限
-   packages 文件夹下的项目名称和他 package.json 的 name 要保持一致（项目命令需要使用）
-   vetur.config.js 配置 保证 vetur 的检测可以在子项目运行
-   tsconfig.json 根目录保存一份，子项目继承根目录的配置
-   lerna.json 配置相关
-   start，build，commit
-   eslint，prettier，husky，lint-staged，commintlint 等功能提出到根目录(未做,因为项目配置不一样，不太好聚合)
-   公共依赖提出整理(未做)
