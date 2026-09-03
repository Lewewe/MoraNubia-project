.class public Lcn/nubia/redmagickyi/permission/scene/RedmagicCameraPermission;
.super Lcn/nubia/redmagickyi/permission/scene/BasePermission;
.source "RedmagicCameraPermission.java"


# direct methods
.method public constructor <init>(ILcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;-><init>(ILcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;)V

    return-void
.end method


# virtual methods
.method protected initPermissionGroups()[Lcn/nubia/redmagickyi/permission/PermissionGroup;
    .locals 5

    .line 15
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/scene/RedmagicCameraPermission;->getRequestCode()I

    move-result p0

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;-><init>(I)V

    sget p0, Lcn/nubia/redmagickyi/main/R$string;->permission_require_camera:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "android.permission.CAMERA"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 16
    invoke-virtual {v0, p0, v2}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->addPermission(I[Ljava/lang/String;)Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->build()Lcn/nubia/redmagickyi/permission/PermissionGroup;

    move-result-object p0

    .line 18
    new-array v0, v1, [Lcn/nubia/redmagickyi/permission/PermissionGroup;

    aput-object p0, v0, v4

    return-object v0
.end method
