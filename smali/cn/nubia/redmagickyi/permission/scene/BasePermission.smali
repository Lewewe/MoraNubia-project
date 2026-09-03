.class public abstract Lcn/nubia/redmagickyi/permission/scene/BasePermission;
.super Ljava/lang/Object;
.source "BasePermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BasePermission"


# instance fields
.field private callback:Lcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;

.field private isChecking:Z

.field private permissionGroups:[Lcn/nubia/redmagickyi/permission/PermissionGroup;

.field private requestCode:I


# direct methods
.method public constructor <init>(ILcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->isChecking:Z

    .line 24
    iput p1, p0, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->requestCode:I

    .line 25
    iput-object p2, p0, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->callback:Lcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;

    .line 26
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->initPermissionGroups()[Lcn/nubia/redmagickyi/permission/PermissionGroup;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->permissionGroups:[Lcn/nubia/redmagickyi/permission/PermissionGroup;

    return-void
.end method

.method private final checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    .line 117
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move p1, p0

    :goto_0
    if-nez p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method private checkSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    .line 125
    invoke-direct {p0}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->shouldSDKRequestPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 127
    invoke-direct {p0, p1, v3}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 0

    .line 137
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private final shouldSDKRequestPermission()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private final shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 0

    .line 94
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private final verifyPermissions([I)Z
    .locals 4

    .line 102
    array-length p0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p0, v1, :cond_0

    return v0

    .line 106
    :cond_0
    array-length p0, p1

    move v2, v0

    :goto_0
    if-ge v2, p0, :cond_2

    aget v3, p1, v2

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public getRequestCode()I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->requestCode:I

    return p0
.end method

.method protected abstract initPermissionGroups()[Lcn/nubia/redmagickyi/permission/PermissionGroup;
.end method

.method public notHasAllPermissionOfRuntime(Landroid/content/Context;)Z
    .locals 8

    .line 34
    invoke-direct {p0}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->shouldSDKRequestPermission()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BasePermission"

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->permissionGroups:[Lcn/nubia/redmagickyi/permission/PermissionGroup;

    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 36
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/permission/PermissionGroup;->getAllPermissionsStr()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->checkSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v5

    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkSelfPermissions result = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_0

    .line 39
    const-string p0, "notHasAllPermissionOfRuntime result = true"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 44
    :cond_1
    const-string p0, "notHasAllPermissionOfRuntime result = false"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 7

    const/4 p3, 0x0

    move p4, p3

    .line 61
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->permissionGroups:[Lcn/nubia/redmagickyi/permission/PermissionGroup;

    array-length v1, v0

    if-ge p4, v1, :cond_7

    .line 62
    aget-object v0, v0, p4

    .line 63
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/permission/PermissionGroup;->getRequestCode()I

    move-result v0

    if-ne v0, p2, :cond_6

    .line 64
    iget-object p2, p0, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->permissionGroups:[Lcn/nubia/redmagickyi/permission/PermissionGroup;

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-eq p4, v0, :cond_0

    add-int/lit8 p4, p4, 0x1

    .line 65
    aget-object p2, p2, p4

    .line 66
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/permission/PermissionGroup;->getAllPermissionsStr()[Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/permission/PermissionGroup;->getRequestCode()I

    move-result p2

    invoke-direct {p0, p1, p3, p2}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_4

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 70
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move p4, p3

    .line 71
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->permissionGroups:[Lcn/nubia/redmagickyi/permission/PermissionGroup;

    array-length v1, v0

    if-ge p4, v1, :cond_5

    .line 72
    aget-object v0, v0, p4

    .line 73
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/permission/PermissionGroup;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;

    .line 74
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;->getPermissionsStr()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, p3

    :goto_3
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 75
    invoke-direct {p0, p1, v5}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0, p1, v5}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 76
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;->getName()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 83
    :cond_5
    iget-object p4, p0, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->callback:Lcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;

    invoke-interface {p4, p1, p2}, Lcn/nubia/redmagickyi/permission/scene/BasePermission$Callback;->onPermissionsRequestFinished(Landroid/content/Context;Ljava/util/List;)V

    .line 84
    iput-boolean p3, p0, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->isChecking:Z

    goto :goto_4

    :cond_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method public requestPermission(Landroid/app/Activity;)V
    .locals 5

    .line 49
    invoke-direct {p0}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->shouldSDKRequestPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->isChecking:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->isChecking:Z

    .line 51
    iget-object v0, p0, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->permissionGroups:[Lcn/nubia/redmagickyi/permission/PermissionGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 52
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/permission/PermissionGroup;->getAllPermissionsStr()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->checkSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/permission/PermissionGroup;->getAllPermissionsStr()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/permission/PermissionGroup;->getRequestCode()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/permission/scene/BasePermission;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
