.class public Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "RedMagicLiveQuickActivity.java"


# static fields
.field public static final FROM_LIVE_QUICK:Ljava/lang/String; = "from_quick"

.field public static final LIVE_ACTION:Ljava/lang/String; = "intent.action.redmagickyi.live"

.field private static final TAG:Ljava/lang/String; = "RedMagicLiveQuickActivity"


# instance fields
.field private arLiveSelectDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;

.field private isClicked:Z

.field lastOrientation:Ljava/lang/Integer;

.field redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

.field redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

.field private startLivePCDialog:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;

.field startPcLive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->startPcLive:Z

    .line 31
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->isClicked:Z

    .line 32
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    .line 33
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->isClicked:Z

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->isClicked:Z

    return p1
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;)Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;
    .locals 0

    .line 24
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->arLiveSelectDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;)Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->startLivePCDialog:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;

    return-object p0
.end method

.method private initLivePCDialog()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->startLivePCDialog:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;

    new-instance v1, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$1;-><init>(Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;)V

    new-instance v2, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$2;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$2;-><init>(Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;-><init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog$OnDismissListener;Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog$OnStartLiveListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->startLivePCDialog:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;

    const/4 p0, 0x1

    .line 103
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method private initLiveSelectDialog()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->arLiveSelectDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;

    new-instance v1, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$3;-><init>(Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;)V

    new-instance v2, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$4;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$4;-><init>(Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;)V

    new-instance v3, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$5;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$5;-><init>(Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;-><init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnDismissListener;Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnMobileListener;Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnComputerListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->arLiveSelectDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;

    :cond_0
    return-void
.end method


# virtual methods
.method public HasAgreeCta()V
    .locals 2

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->isClicked:Z

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->arLiveSelectDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->setCanceledOnTouchOutside(Z)V

    .line 69
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->arLiveSelectDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->show()V

    :cond_0
    return-void
.end method

.method protected autoChangeOrientation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 174
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 175
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->lastOrientation:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_3

    .line 176
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->lastOrientation:Ljava/lang/Integer;

    .line 177
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->arLiveSelectDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 178
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->arLiveSelectDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->hide()V

    .line 179
    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->arLiveSelectDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;

    .line 180
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->initLiveSelectDialog()V

    .line 181
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->startLivePCDialog:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;

    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->hide()V

    .line 183
    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->startLivePCDialog:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;

    .line 184
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->initLivePCDialog()V

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->HasAgreeCta()V

    goto :goto_0

    .line 187
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->startLivePCDialog:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 188
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->startLivePCDialog:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->hide()V

    .line 189
    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->startLivePCDialog:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;

    .line 190
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->initLivePCDialog()V

    .line 191
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->startPcLive:Z

    if-eqz p1, :cond_3

    .line 192
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->startLivePCDialog:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->ar_start_live_guide_text:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->show(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->requestWindowFeature(I)Z

    .line 38
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const-string p1, "RedMagicLiveQuickActivity"

    const-string v0, "RedMagicLiveQuickActivity onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->redMagicARImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->CheckARIamgeData()V

    .line 41
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->redMagicARSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->CheckARSettingData()V

    .line 42
    invoke-static {}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->checkLocaleSkinImageData()V

    .line 44
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->initLivePCDialog()V

    .line 45
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->initLiveSelectDialog()V

    .line 46
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->HasAgreeCta()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 56
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    .line 57
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->startLivePCDialog:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    iput-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->startLivePCDialog:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;

    .line 60
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->arLiveSelectDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;

    if-eqz v0, :cond_1

    .line 61
    iput-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->arLiveSelectDialog:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 51
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 157
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    const-string p0, "android:support:fragments"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    const-string v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 163
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
