.class public Lcn/nubia/redmagickyi/permission/scene/RedmagicPosePermission;
.super Lcn/nubia/redmagickyi/permission/scene/BasePermission;
.source "RedmagicPosePermission.java"


# direct methods
.method public constructor <init>(ILcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;-><init>(ILcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;)V

    return-void
.end method


# virtual methods
.method protected initPermissionGroups()[Lcn/nubia/redmagickyi/permission/PermissionGroup;
    .locals 7

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 20
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-le v0, v1, :cond_1

    .line 22
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/scene/RedmagicPosePermission;->getRequestCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;-><init>(I)V

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->permission_require_storage_T:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "android.permission.READ_MEDIA_VIDEO"

    aput-object v6, v5, v3

    const-string v6, "android.permission.READ_MEDIA_IMAGES"

    aput-object v6, v5, v4

    const-string v6, "android.permission.READ_MEDIA_AUDIO"

    aput-object v6, v5, v2

    .line 23
    invoke-virtual {v0, v1, v5}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->addPermission(I[Ljava/lang/String;)Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->build()Lcn/nubia/redmagickyi/permission/PermissionGroup;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/scene/RedmagicPosePermission;->getRequestCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;-><init>(I)V

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->permission_require_storage:I

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v6, v5, v3

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v6, v5, v4

    .line 28
    invoke-virtual {v0, v1, v5}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->addPermission(I[Ljava/lang/String;)Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->build()Lcn/nubia/redmagickyi/permission/PermissionGroup;

    move-result-object v0

    .line 31
    :goto_0
    new-instance v1, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/scene/RedmagicPosePermission;->getRequestCode()I

    move-result p0

    add-int/2addr p0, v4

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;-><init>(I)V

    sget p0, Lcn/nubia/redmagickyi/main/R$string;->permission_require_camera:I

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "android.permission.CAMERA"

    aput-object v6, v5, v3

    .line 32
    invoke-virtual {v1, p0, v5}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->addPermission(I[Ljava/lang/String;)Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->build()Lcn/nubia/redmagickyi/permission/PermissionGroup;

    move-result-object p0

    if-nez v0, :cond_2

    .line 35
    new-array v0, v4, [Lcn/nubia/redmagickyi/permission/PermissionGroup;

    aput-object p0, v0, v3

    return-object v0

    .line 37
    :cond_2
    new-array v1, v2, [Lcn/nubia/redmagickyi/permission/PermissionGroup;

    aput-object v0, v1, v3

    aput-object p0, v1, v4

    return-object v1
.end method
