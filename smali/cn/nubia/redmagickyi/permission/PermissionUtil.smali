.class public Lcn/nubia/redmagickyi/permission/PermissionUtil;
.super Ljava/lang/Object;
.source "PermissionUtil.java"

# interfaces
.implements Lcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;,
        Lcn/nubia/redmagickyi/permission/PermissionUtil$PermissionsType;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PermissionUtil"

.field public static final PERMISSIONS_AR_PHOTO:I = 0xc350

.field public static final PERMISSIONS_AUDIO_RECORD:I = 0x11170

.field public static final PERMISSIONS_CAMERA:I = 0x13880

.field public static final PERMISSIONS_GAMESPACE:I = 0x2710

.field public static final PERMISSIONS_LIVE_CALENDER:I = 0x15f90

.field public static final PERMISSIONS_REDMAGIC_CALL:I = 0x4e20

.field public static final PERMISSIONS_REDMAGIC_POSE:I = 0x9c40

.field public static final PERMISSIONS_REDMAGIC_WALLPAPER:I = 0x7530

.field public static final PERMISSIONS_REDMAGIC_WALLPAPER_MATCH_READ_EXTERNAL:I = 0xea60


# instance fields
.field private callback:Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;

.field private permissionBase:Lcn/nubia/redmagickyi/permission/scene/BasePermission;

.field private permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;


# direct methods
.method public constructor <init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->callback:Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 81
    :sswitch_0
    new-instance p2, Lcn/nubia/redmagickyi/permission/scene/RedmagicLiveCalenderPermission;

    invoke-direct {p2, p1, p0}, Lcn/nubia/redmagickyi/permission/scene/RedmagicLiveCalenderPermission;-><init>(ILcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionBase:Lcn/nubia/redmagickyi/permission/scene/BasePermission;

    goto :goto_0

    .line 78
    :sswitch_1
    new-instance p2, Lcn/nubia/redmagickyi/permission/scene/RedmagicCameraPermission;

    invoke-direct {p2, p1, p0}, Lcn/nubia/redmagickyi/permission/scene/RedmagicCameraPermission;-><init>(ILcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionBase:Lcn/nubia/redmagickyi/permission/scene/BasePermission;

    goto :goto_0

    .line 75
    :sswitch_2
    new-instance p2, Lcn/nubia/redmagickyi/permission/scene/RedmagicAudioRecordPermission;

    invoke-direct {p2, p1, p0}, Lcn/nubia/redmagickyi/permission/scene/RedmagicAudioRecordPermission;-><init>(ILcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionBase:Lcn/nubia/redmagickyi/permission/scene/BasePermission;

    goto :goto_0

    .line 68
    :sswitch_3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x20

    if-le p2, v0, :cond_0

    .line 69
    new-instance p2, Lcn/nubia/redmagickyi/permission/scene/RedmagicWallPaperPermission;

    invoke-direct {p2, p1, p0}, Lcn/nubia/redmagickyi/permission/scene/RedmagicWallPaperPermission;-><init>(ILcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionBase:Lcn/nubia/redmagickyi/permission/scene/BasePermission;

    goto :goto_0

    .line 71
    :cond_0
    new-instance p2, Lcn/nubia/redmagickyi/permission/scene/RedmagicWallPaperPermissionMatchReadExternal;

    invoke-direct {p2, p1, p0}, Lcn/nubia/redmagickyi/permission/scene/RedmagicWallPaperPermissionMatchReadExternal;-><init>(ILcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionBase:Lcn/nubia/redmagickyi/permission/scene/BasePermission;

    goto :goto_0

    .line 65
    :sswitch_4
    new-instance p2, Lcn/nubia/redmagickyi/permission/scene/ARPhotoPermission;

    invoke-direct {p2, p1, p0}, Lcn/nubia/redmagickyi/permission/scene/ARPhotoPermission;-><init>(ILcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionBase:Lcn/nubia/redmagickyi/permission/scene/BasePermission;

    goto :goto_0

    .line 62
    :sswitch_5
    new-instance p2, Lcn/nubia/redmagickyi/permission/scene/RedmagicPosePermission;

    invoke-direct {p2, p1, p0}, Lcn/nubia/redmagickyi/permission/scene/RedmagicPosePermission;-><init>(ILcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionBase:Lcn/nubia/redmagickyi/permission/scene/BasePermission;

    goto :goto_0

    .line 59
    :sswitch_6
    new-instance p2, Lcn/nubia/redmagickyi/permission/scene/RedmagicWallPaperPermission;

    invoke-direct {p2, p1, p0}, Lcn/nubia/redmagickyi/permission/scene/RedmagicWallPaperPermission;-><init>(ILcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionBase:Lcn/nubia/redmagickyi/permission/scene/BasePermission;

    goto :goto_0

    .line 56
    :sswitch_7
    new-instance p2, Lcn/nubia/redmagickyi/permission/scene/RedmagicCallPermission;

    invoke-direct {p2, p1, p0}, Lcn/nubia/redmagickyi/permission/scene/RedmagicCallPermission;-><init>(ILcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionBase:Lcn/nubia/redmagickyi/permission/scene/BasePermission;

    goto :goto_0

    .line 53
    :sswitch_8
    new-instance p2, Lcn/nubia/redmagickyi/permission/scene/GamespacePermission;

    invoke-direct {p2, p1, p0}, Lcn/nubia/redmagickyi/permission/scene/GamespacePermission;-><init>(ILcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionBase:Lcn/nubia/redmagickyi/permission/scene/BasePermission;

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_8
        0x4e20 -> :sswitch_7
        0x7530 -> :sswitch_6
        0x9c40 -> :sswitch_5
        0xc350 -> :sswitch_4
        0xea60 -> :sswitch_3
        0x11170 -> :sswitch_2
        0x13880 -> :sswitch_1
        0x15f90 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/permission/PermissionUtil;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->dismissPermissionGuide()V

    return-void
.end method

.method private dismissPermissionGuide()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->dismiss()V

    .line 158
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->callback:Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;->onPermissionGuideDisallow()V

    return-void
.end method

.method public static gotoAppSettingsActivity(Landroid/content/Context;)V
    .locals 3

    .line 162
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 163
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showPermissionGuide(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 127
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u00b7 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    .line 130
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_1
    new-instance p2, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    sget v2, Lcn/nubia/redmagickyi/main/R$style;->PermissionDialog:I

    invoke-direct {p2, p1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->permission_guide_title:I

    .line 135
    invoke-virtual {p2, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object p2

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object p2

    .line 137
    invoke-virtual {p2, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->permission_guide_go_to_setting:I

    new-instance v1, Lcn/nubia/redmagickyi/permission/PermissionUtil$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/permission/PermissionUtil$2;-><init>(Lcn/nubia/redmagickyi/permission/PermissionUtil;Landroid/content/Context;)V

    .line 138
    invoke-virtual {p2, v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcn/nubia/redmagickyi/permission/PermissionUtil$1;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil$1;-><init>(Lcn/nubia/redmagickyi/permission/PermissionUtil;)V

    const/high16 v0, 0x1040000

    .line 144
    invoke-virtual {p1, v0, p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->create()Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 150
    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->setMaxHeightRatio(F)V

    .line 151
    iget-object p0, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getRequestCode()I
    .locals 0

    .line 89
    iget-object p0, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionBase:Lcn/nubia/redmagickyi/permission/scene/BasePermission;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->getRequestCode()I

    move-result p0

    return p0
.end method

.method public notHasAllPermissionOfRuntime(Landroid/content/Context;)Z
    .locals 0

    .line 104
    iget-object p0, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionBase:Lcn/nubia/redmagickyi/permission/scene/BasePermission;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onPermissionsRequestFinished(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->dismiss()V

    :cond_0
    if-eqz p2, :cond_2

    .line 117
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 118
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->showPermissionGuide(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->callback:Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;->onPermissionGuideDisallow()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionBase:Lcn/nubia/redmagickyi/permission/scene/BasePermission;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public requestPermission(Landroid/app/Activity;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->callback:Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;->onPermissionRequesting()V

    .line 97
    iget-object p0, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->permissionBase:Lcn/nubia/redmagickyi/permission/scene/BasePermission;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->requestPermission(Landroid/app/Activity;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil;->callback:Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;->onPermissionRequested()V

    :goto_0
    return-void
.end method
