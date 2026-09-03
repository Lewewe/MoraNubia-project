.class public Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;
.super Ljava/lang/Object;
.source "PermissionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/permission/PermissionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;",
            ">;"
        }
    .end annotation
.end field

.field requestCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->requestCode:I

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->permissions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPermission(I[Ljava/lang/String;)Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;
    .locals 3

    .line 54
    iget-object v0, p0, Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;->permissions:Ljava/util/List;

    new-instance v1, Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;-><init>(I[Ljava/lang/String;Lcn/nubia/redmagickyi/permission/PermissionGroup$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcn/nubia/redmagickyi/permission/PermissionGroup;
    .locals 2

    .line 59
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionGroup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/permission/PermissionGroup;-><init>(Lcn/nubia/redmagickyi/permission/PermissionGroup$Builder;Lcn/nubia/redmagickyi/permission/PermissionGroup$1;)V

    return-object v0
.end method
