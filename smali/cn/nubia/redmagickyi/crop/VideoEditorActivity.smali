.class public Lcn/nubia/redmagickyi/crop/VideoEditorActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "VideoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/crop/VideoEditorActivity$initExternalFolderThread;
    }
.end annotation


# static fields
.field private static final KEY_CAMERA_SCREEN_BRIGHTNESS:Ljava/lang/String; = "camera_screen_light"

.field public static final KEY_FULLSCREEN:Ljava/lang/String; = "full_screen"

.field public static final KEY_VIDEO_SAVE_URI:Ljava/lang/String; = "video_save_uri"

.field private static final TAG:Ljava/lang/String; = "VideoEditorActivity"


# instance fields
.field private IsObtainPermission:Z

.field private hasAlreadyOnEdit:Z

.field mActivityIsInPause:Z

.field private mCropView:Lcn/nubia/redmagickyi/crop/view/CropView;

.field private mCurrentAudioUri:Landroid/net/Uri;

.field private mDrawView:Lcn/nubia/redmagickyi/crop/view/DrawView;

.field private mFragMgr:Landroidx/fragment/app/FragmentManager;

.field private mFragment:Lcn/nubia/redmagickyi/crop/base/FragmentBase;

.field private mFragmentTag:Ljava/lang/String;

.field private mIsShowCTADialog:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPermissionAlertDialog:Landroid/app/Dialog;

.field private mUri:Landroid/net/Uri;

.field private mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

.field private mVideoSaveUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mActivityIsInPause:Z

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mCurrentAudioUri:Landroid/net/Uri;

    .line 44
    iput-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mPermissionAlertDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mIsShowCTADialog:Z

    .line 47
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->IsObtainPermission:Z

    return-void
.end method

.method private hideStatusBar()V
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 149
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 150
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 212
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mFragment:Lcn/nubia/redmagickyi/crop/base/FragmentBase;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mFragment:Lcn/nubia/redmagickyi/crop/base/FragmentBase;

    iget-object v0, v0, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/crop/base/BaseController;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 215
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getCropView()Lcn/nubia/redmagickyi/crop/view/CropView;
    .locals 0

    .line 109
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mCropView:Lcn/nubia/redmagickyi/crop/view/CropView;

    return-object p0
.end method

.method public getDrawView()Lcn/nubia/redmagickyi/crop/view/DrawView;
    .locals 0

    .line 101
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mDrawView:Lcn/nubia/redmagickyi/crop/view/DrawView;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 198
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getVideoSaveUri()Landroid/net/Uri;
    .locals 0

    .line 202
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mVideoSaveUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getVideoView()Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
    .locals 0

    .line 93
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-object p0
.end method

.method public onBackPressed()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mFragment:Lcn/nubia/redmagickyi/crop/base/FragmentBase;

    if-nez v0, :cond_0

    .line 187
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onBackPressed()V

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/base/FragmentBase;->onBackPress()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 144
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "full_screen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/mediaeditor/utils/Utils;->isFullScreen:Z

    .line 53
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "camera_screen_light"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 57
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 58
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 60
    :cond_0
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->hasAlreadyOnEdit:Z

    .line 61
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 62
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->editorplayer_base:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->setContentView(I)V

    .line 63
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalRom()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mIsShowCTADialog:Z

    .line 64
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mFragMgr:Landroidx/fragment/app/FragmentManager;

    .line 65
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mUri:Landroid/net/Uri;

    .line 66
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "video_save_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mVideoSaveUri:Landroid/net/Uri;

    .line 67
    invoke-static {p0}, Lcn/nubia/mediaeditor/utils/Utils;->isNubiaUI(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mIsShowCTADialog:Z

    .line 68
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 69
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->layout_root:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget-boolean v0, Lcn/nubia/mediaeditor/utils/Utils;->isFullScreen:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 70
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->onPlay()V

    .line 71
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity$1;-><init>(Lcn/nubia/redmagickyi/crop/VideoEditorActivity;)V

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 168
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 139
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 82
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->setIntent(Landroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->recreate()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mActivityIsInPause:Z

    .line 180
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onPause()V

    return-void
.end method

.method public onPlay()V
    .locals 1

    .line 88
    new-instance v0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity$initExternalFolderThread;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity$initExternalFolderThread;-><init>(Lcn/nubia/redmagickyi/crop/VideoEditorActivity;)V

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity$initExternalFolderThread;->start()V

    .line 89
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->selectFragment()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 155
    const-string v0, "VideoEditorActivity"

    .line 0
    const-string v1, "Ver@"

    const/4 v2, 0x0

    .line 155
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mActivityIsInPause:Z

    .line 156
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 159
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x4000

    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    const-string p0, "Ver@Unkown"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mActivityIsInPause:Z

    .line 174
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onStart()V

    return-void
.end method

.method selectFragment()V
    .locals 1

    const/16 v0, 0x68

    .line 116
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->showFragment(I)V

    return-void
.end method

.method public setDrawView(Lcn/nubia/redmagickyi/crop/view/CropView;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mCropView:Lcn/nubia/redmagickyi/crop/view/CropView;

    return-void
.end method

.method public setDrawView(Lcn/nubia/redmagickyi/crop/view/DrawView;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mDrawView:Lcn/nubia/redmagickyi/crop/view/DrawView;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public setVideoSaveUri(Landroid/net/Uri;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mVideoSaveUri:Landroid/net/Uri;

    return-void
.end method

.method public setVideoView(Lcn/nubia/redmagickyi/crop/view/VideoEditorView;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mVideoEditorView:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    return-void
.end method

.method showFragment(I)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mFragMgr:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x68

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance p1, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/crop/EditorPlayerFragment;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mFragment:Lcn/nubia/redmagickyi/crop/base/FragmentBase;

    .line 124
    const-string p1, "EditorPlayerFragment"

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mFragmentTag:Ljava/lang/String;

    .line 129
    :goto_0
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->layout_base:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mFragment:Lcn/nubia/redmagickyi/crop/base/FragmentBase;

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->mFragmentTag:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 130
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 131
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 133
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->hideStatusBar()V

    :cond_1
    return-void
.end method
