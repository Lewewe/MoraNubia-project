.class public Lcn/nubia/redmagickyi/permission/scene/RedmagicWallPaperPermission;
.super Lcn/nubia/redmagickyi/permission/scene/BasePermission;
.source "RedmagicWallPaperPermission.java"


# direct methods
.method public constructor <init>(ILcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;-><init>(ILcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;)V

    return-void
.end method


# virtual methods
.method protected initPermissionGroups()[Lcn/nubia/redmagickyi/permission/PermissionGroup;
    .locals 6

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 18
    new-array p0, v2, [Lcn/nubia/redmagickyi/permission/PermissionGroup;

    return-object p0

    .line 19
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-le v0, v1, :cond_1

    .line 21
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/scene/RedmagicWallPaperPermission;->getRequestCode()I

    move-result p0

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;-><init>(I)V

    sget p0, Lcn/nubia/redmagickyi/main/R$string;->permission_require_storage_T:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v5, "android.permission.READ_MEDIA_VIDEO"

    aput-object v5, v1, v2

    const-string v5, "android.permission.READ_MEDIA_IMAGES"

    aput-object v5, v1, v4

    const-string v5, "android.permission.READ_MEDIA_AUDIO"

    aput-object v5, v1, v3

    .line 22
    invoke-virtual {v0, p0, v1}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->addPermission(I[Ljava/lang/String;)Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->build()Lcn/nubia/redmagickyi/permission/PermissionGroup;

    move-result-object p0

    .line 24
    new-array v0, v4, [Lcn/nubia/redmagickyi/permission/PermissionGroup;

    aput-object p0, v0, v2

    return-object v0

    .line 26
    :cond_1
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/scene/RedmagicWallPaperPermission;->getRequestCode()I

    move-result p0

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;-><init>(I)V

    sget p0, Lcn/nubia/redmagickyi/main/R$string;->permission_require_storage:I

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v4

    .line 27
    invoke-virtual {v0, p0, v1}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->addPermission(I[Ljava/lang/String;)Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->build()Lcn/nubia/redmagickyi/permission/PermissionGroup;

    move-result-object p0

    .line 29
    new-array v0, v4, [Lcn/nubia/redmagickyi/permission/PermissionGroup;

    aput-object p0, v0, v2

    return-object v0
.end method
