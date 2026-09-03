.class public Lcn/nubia/redmagickyi/permission/PermissionGroup;
.super Ljava/lang/Object;
.source "PermissionGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;,
        Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;
    }
.end annotation


# instance fields
.field private allPermissionsStr:[Ljava/lang/String;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;",
            ">;"
        }
    .end annotation
.end field

.field private requestCode:I


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iget v0, p1, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->requestCode:I

    iput v0, p0, Lcn/nubia/redmagickyi/permission/PermissionGroup;->requestCode:I

    .line 15
    iget-object p1, p1, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->permissions:Ljava/util/List;

    iput-object p1, p0, Lcn/nubia/redmagickyi/permission/PermissionGroup;->permissions:Ljava/util/List;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v0, p0, Lcn/nubia/redmagickyi/permission/PermissionGroup;->permissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;

    .line 19
    invoke-static {v1}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;->access$000(Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/redmagickyi/permission/PermissionGroup;->allPermissionsStr:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;Lcn/nubia/redmagickyi/permission/PermissionGroup$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/permission/PermissionGroup;-><init>(Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;)V

    return-void
.end method

.method private getAllPermissions()[Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/permission/PermissionGroup;->permissions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;

    .line 39
    invoke-static {v1}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;->access$000(Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getAllPermissionsStr()[Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/permission/PermissionGroup;->allPermissionsStr:[Ljava/lang/String;

    return-object p0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/permission/PermissionGroup;->permissions:Ljava/util/List;

    return-object p0
.end method

.method public getRequestCode()I
    .locals 0

    .line 29
    iget p0, p0, Lcn/nubia/redmagickyi/permission/PermissionGroup;->requestCode:I

    return p0
.end method
