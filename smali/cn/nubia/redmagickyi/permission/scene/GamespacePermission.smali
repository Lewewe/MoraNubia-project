.class public Lcn/nubia/redmagickyi/permission/scene/GamespacePermission;
.super Lcn/nubia/redmagickyi/permission/scene/BasePermission;
.source "GamespacePermission.java"


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

    const/16 v1, 0x20

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v0, v1, :cond_0

    .line 19
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/scene/GamespacePermission;->getRequestCode()I

    move-result p0

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;-><init>(I)V

    sget p0, Lcn/nubia/redmagickyi/main/R$string;->permission_require_storage_T:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v5, "android.permission.READ_MEDIA_VIDEO"

    aput-object v5, v1, v4

    const-string v5, "android.permission.READ_MEDIA_IMAGES"

    aput-object v5, v1, v3

    const-string v5, "android.permission.READ_MEDIA_AUDIO"

    aput-object v5, v1, v2

    .line 20
    invoke-virtual {v0, p0, v1}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->addPermission(I[Ljava/lang/String;)Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->build()Lcn/nubia/redmagickyi/permission/PermissionGroup;

    move-result-object p0

    .line 22
    new-array v0, v3, [Lcn/nubia/redmagickyi/permission/PermissionGroup;

    aput-object p0, v0, v4

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/scene/GamespacePermission;->getRequestCode()I

    move-result p0

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;-><init>(I)V

    sget p0, Lcn/nubia/redmagickyi/main/R$string;->permission_require_storage:I

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v3

    .line 26
    invoke-virtual {v0, p0, v1}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->addPermission(I[Ljava/lang/String;)Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->build()Lcn/nubia/redmagickyi/permission/PermissionGroup;

    move-result-object p0

    .line 28
    new-array v0, v3, [Lcn/nubia/redmagickyi/permission/PermissionGroup;

    aput-object p0, v0, v4

    return-object v0
.end method
