.class public Lcn/nubia/redmagickyi/permission/scene/RedmagicWallPaperPermissionMatchReadExternal;
.super Lcn/nubia/redmagickyi/permission/scene/BasePermission;
.source "RedmagicWallPaperPermissionMatchReadExternal.java"


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

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-le v0, v1, :cond_1

    .line 21
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/scene/RedmagicWallPaperPermissionMatchReadExternal;->getRequestCode()I

    move-result p0

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;-><init>(I)V

    sget p0, Lcn/nubia/redmagickyi/main/R$string;->permission_require_storage_T:I

    new-array v1, v5, [Ljava/lang/String;

    aput-object v4, v1, v2

    aput-object v3, v1, v6

    .line 22
    invoke-virtual {v0, p0, v1}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->addPermission(I[Ljava/lang/String;)Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->build()Lcn/nubia/redmagickyi/permission/PermissionGroup;

    move-result-object p0

    .line 24
    new-array v0, v6, [Lcn/nubia/redmagickyi/permission/PermissionGroup;

    aput-object p0, v0, v2

    return-object v0

    .line 26
    :cond_1
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/scene/RedmagicWallPaperPermissionMatchReadExternal;->getRequestCode()I

    move-result p0

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;-><init>(I)V

    sget p0, Lcn/nubia/redmagickyi/main/R$string;->permission_require_storage:I

    new-array v1, v5, [Ljava/lang/String;

    aput-object v4, v1, v2

    aput-object v3, v1, v6

    .line 27
    invoke-virtual {v0, p0, v1}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->addPermission(I[Ljava/lang/String;)Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->build()Lcn/nubia/redmagickyi/permission/PermissionGroup;

    move-result-object p0

    .line 29
    new-array v0, v6, [Lcn/nubia/redmagickyi/permission/PermissionGroup;

    aput-object p0, v0, v2

    return-object v0
.end method
