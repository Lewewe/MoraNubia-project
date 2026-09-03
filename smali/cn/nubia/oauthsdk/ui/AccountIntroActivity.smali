.class public Lcn/nubia/oauthsdk/ui/AccountIntroActivity;
.super Lcn/nubia/oauthsdk/ui/BaseMessageActivity;
.source "AccountIntroActivity.java"


# static fields
.field private static final MAGIC_VOICE_STATE:Ljava/lang/String; = "cn.nubia.MAGIC_VOICE_STATE"

.field private static final MAGIC_VOICE_STATE_MUTE:I = 0x0

.field private static final MAGIC_VOICE_STATE_PLAY:I = 0x1


# instance fields
.field ll:Landroid/widget/LinearLayout;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mIsCancelled:Z

.field mIsCreat:Z

.field private mVoiceStatus:I

.field private myTitleBarView:Lcn/nubia/oauthsdk/ui/MyTitleBarView;

.field soundId:I

.field private soundPool:Landroid/media/SoundPool;

.field private streamId:I

.field private voiceStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcn/nubia/oauthsdk/ui/AccountIntroActivity;->mIsCancelled:Z

    .line 37
    iput v0, p0, Lcn/nubia/oauthsdk/ui/AccountIntroActivity;->mVoiceStatus:I

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcn/nubia/oauthsdk/ui/AccountIntroActivity;->mIsCreat:Z

    return-void
.end method

.method private onFragmentResult(IILandroid/content/Intent;)V
    .locals 1

    .line 233
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/AccountIntroActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 235
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized pausePlay()V
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/AccountIntroActivity;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 69
    iget v1, p0, Lcn/nubia/oauthsdk/ui/AccountIntroActivity;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getContentView()I
    .locals 0

    .line 82
    sget p0, Lcn/nubia/mergesdk/R$layout;->activity_main:I

    return p0
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, v0}, Lcn/nubia/oauthsdk/ui/AccountIntroActivity;->onBackPressed(I)V

    return-void
.end method

.method public onBackPressed(I)V
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/AccountIntroActivity;->hideSoftInput()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    :try_start_0
    invoke-super {p0, p1}, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/AccountIntroActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/AccountIntroActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 49
    sget p1, Lcn/nubia/mergesdk/R$id;->tb:I

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/ui/AccountIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/oauthsdk/ui/MyTitleBarView;

    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/AccountIntroActivity;->myTitleBarView:Lcn/nubia/oauthsdk/ui/MyTitleBarView;

    .line 50
    sget p1, Lcn/nubia/mergesdk/R$id;->act_main:I

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/ui/AccountIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/AccountIntroActivity;->ll:Landroid/widget/LinearLayout;

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "=onCreate()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->i(Ljava/lang/String;)V

    .line 55
    const-string p1, "AccountIntroActivity onCreate failed"

    invoke-static {p1}, Lcn/nubia/accountsdk/common/SDKLogUtils;->i(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/AccountIntroActivity;->finish()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 75
    invoke-super {p0}, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;->onPause()V

    .line 76
    invoke-direct {p0}, Lcn/nubia/oauthsdk/ui/AccountIntroActivity;->pausePlay()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
