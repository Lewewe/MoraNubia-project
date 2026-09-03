.class public Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "ARBigImageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;
    }
.end annotation


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "image/*"

.field public static final PHOTOEDITOR_PACKAGE_NAME:Ljava/lang/String; = "cn.nubia.photoeditor"

.field public static final REQUEST_EDIT:I = 0x1

.field private static final SAVE_IMAGE_SUCCESS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ARBigImageFragment"


# instance fields
.field private editPhotoLandscape:Landroid/widget/ImageView;

.field private editPhotoPortrait:Landroid/widget/ImageView;

.field private editPhotoTextLandscape:Landroid/widget/TextView;

.field private editPhotoTextPortrait:Landroid/widget/TextView;

.field public handler:Landroid/os/Handler;

.field private layoutOperateLandscape:Landroid/view/View;

.field private layoutOperatePortrait:Landroid/view/View;

.field private mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

.field private onBigImageOpListener:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;

.field private remakePhotoLandscape:Landroid/widget/ImageView;

.field private remakePhotoPortrait:Landroid/widget/ImageView;

.field private remakePhotoTextLandscape:Landroid/widget/TextView;

.field private remakePhotoTextPortrait:Landroid/widget/TextView;

.field private savePhotoLandscape:Landroid/widget/ImageView;

.field private savePhotoPortrait:Landroid/widget/ImageView;

.field private savePhotoTextLandscape:Landroid/widget/TextView;

.field private savePhotoTextPortrait:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    .line 280
    new-instance v0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$5;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$5;-><init>(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;)Landroid/content/Intent;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getEditorIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;Landroid/content/Intent;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->isIntentEnable(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->setEditPhotoIconEnable(Z)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoPortrait:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoLandscape:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getEditorIntent()Landroid/content/Intent;
    .locals 1

    .line 157
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.EDIT"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private isIntentEnable(Landroid/content/Intent;)Z
    .locals 2

    .line 150
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private setEditPhotoIconEnable(Z)V
    .locals 2

    .line 227
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 228
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoPortrait:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 231
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoLandscape:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    .line 232
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 235
    new-instance v1, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$4;-><init>(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public PermissionCheck()Z
    .locals 2

    .line 315
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    .line 316
    const-string v0, "onResume requestPermission done"

    const-string v1, "ARBigImageFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 318
    const-string p0, "onResume not HasAllPermissionOfRuntime"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->addOpCallback(Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;)V

    .line 74
    instance-of v0, p1, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->onBigImageOpListener:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;

    :cond_0
    return-void
.end method

.method public createEnterAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->nubia_activity_open_enter:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public createExitAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->nubia_activity_close_exit:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public initData()V
    .locals 3

    .line 118
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    new-instance v1, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$1;-><init>(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;)V

    const v2, 0x9c40

    invoke-direct {v0, v2, v1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    .line 135
    invoke-direct {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getEditorIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->isIntentEnable(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoPortrait:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoLandscape:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoTextPortrait:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoTextLandscape:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoPortrait:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoLandscape:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoTextPortrait:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoTextLandscape:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 7

    .line 80
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_operate_port:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->layoutOperatePortrait:Landroid/view/View;

    .line 81
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->remake_photo_port:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->remakePhotoPortrait:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->remake_photo_text_port:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->remakePhotoTextPortrait:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$color;->black_80000000:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->remakePhotoTextPortrait:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 86
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->edit_photo_port:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoPortrait:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->edit_photo_text_port:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoTextPortrait:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/redmagickyi/main/R$color;->black_80000000:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 90
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoTextPortrait:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 91
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->save_photo_port:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->savePhotoPortrait:Landroid/widget/ImageView;

    .line 92
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->save_photo_text_port:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->savePhotoTextPortrait:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/redmagickyi/main/R$color;->black_80000000:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->savePhotoTextPortrait:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 97
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_operate_landscape:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->layoutOperateLandscape:Landroid/view/View;

    .line 98
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->remake_photo_landscape:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->remakePhotoLandscape:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->remake_photo_text_landscape:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->remakePhotoTextLandscape:Landroid/widget/TextView;

    .line 101
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/redmagickyi/main/R$color;->black_80000000:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 102
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->remakePhotoTextLandscape:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 103
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->edit_photo_landscape:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoLandscape:Landroid/widget/ImageView;

    .line 104
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->edit_photo_text_landscape:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoTextLandscape:Landroid/widget/TextView;

    .line 106
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/redmagickyi/main/R$color;->black_80000000:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 107
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->editPhotoTextLandscape:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 108
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->save_photo_landscape:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->savePhotoLandscape:Landroid/widget/ImageView;

    .line 109
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->save_photo_text_landscape:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->savePhotoTextLandscape:Landroid/widget/TextView;

    .line 111
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcn/nubia/redmagickyi/main/R$color;->black_80000000:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v0, v4, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 112
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->savePhotoTextLandscape:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 113
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->setEditPhotoIconEnable(Z)V

    .line 114
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->updateOperateUI()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 219
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 221
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->setEditPhotoIconEnable(Z)V

    .line 222
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 163
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->remake_photo_port:I

    if-eq p1, v0, :cond_6

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->remake_photo_landscape:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->edit_photo_port:I

    if-eq p1, v0, :cond_4

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->edit_photo_landscape:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->save_photo_port:I

    if-eq p1, v0, :cond_2

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->save_photo_landscape:I

    if-ne p1, v0, :cond_7

    .line 196
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->PermissionCheck()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 199
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->onBigImageOpListener:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;->getBigImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->onBigImageOpListener:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;

    invoke-interface {v1}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;->rotaPhoto()I

    move-result v1

    new-instance v2, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$3;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$3;-><init>(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;)V

    invoke-static {p1, v0, v1, v2}, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto;->SaveImage(Landroid/content/Context;Landroid/graphics/Bitmap;ILcn/nubia/redmagickyi/ar/util/SaveARPhoto$SaveImageListener;)V

    goto :goto_2

    .line 166
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->PermissionCheck()Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 169
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->setEditPhotoIconEnable(Z)V

    .line 170
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->onBigImageOpListener:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;->getBigImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->onBigImageOpListener:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;

    invoke-interface {v1}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;->rotaPhoto()I

    move-result v1

    new-instance v2, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$2;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$2;-><init>(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;)V

    invoke-static {p1, v0, v1, v2}, Lcn/nubia/redmagickyi/ar/util/SaveARPhoto;->SaveImage(Landroid/content/Context;Landroid/graphics/Bitmap;ILcn/nubia/redmagickyi/ar/util/SaveARPhoto$SaveImageListener;)V

    goto :goto_2

    .line 164
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_7
    :goto_2
    return-void
.end method

.method public onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 54
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->ar_big_image_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->initView(Landroid/view/View;)V

    .line 56
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->initData()V

    .line 57
    const-string p0, "ARBigImageFragment"

    const-string p2, "onCreateView"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public onHideFragment()V
    .locals 1

    .line 308
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onHideFragment()V

    .line 309
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->handler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 275
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 276
    invoke-static {p1, p2, p3}, Lcom/google/mediapipe/components/PermissionHelper;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 277
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->mPermissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public updateOperateUI()V
    .locals 6

    .line 250
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->layoutOperatePortrait:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->layoutOperateLandscape:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 251
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->onBigImageOpListener:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;->isPortrait()I

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->onBigImageOpListener:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;->isPortrait()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->layoutOperatePortrait:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->layoutOperateLandscape:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setRotation(F)V

    .line 263
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->layoutOperateLandscape:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->onBigImageOpListener:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;->isPortrait()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 265
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->layoutOperateLandscape:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    .line 267
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->layoutOperateLandscape:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    .line 252
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->layoutOperatePortrait:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->layoutOperatePortrait:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setRotation(F)V

    .line 254
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->layoutOperateLandscape:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->onBigImageOpListener:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;->isPortrait()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 256
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->layoutOperatePortrait:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    .line 258
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->layoutOperatePortrait:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/View;->setRotation(F)V

    :cond_4
    :goto_1
    return-void
.end method
