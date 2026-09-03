.class public Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;
.super Ljava/lang/Object;
.source "PermissionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/permission/PermissionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Permission"
.end annotation


# instance fields
.field private name:I

.field private permissionsStr:[Ljava/lang/String;


# direct methods
.method private constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;->name:I

    .line 69
    iput-object p2, p0, Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;->permissionsStr:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(I[Ljava/lang/String;Lcn/nubia/redmagickyi/permission/PermissionGroup$1;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;-><init>(I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;)[Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;->permissionsStr:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getName()I
    .locals 0

    .line 73
    iget p0, p0, Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;->name:I

    return p0
.end method

.method public getPermissionsStr()[Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/permission/PermissionGroup$Permission;->permissionsStr:[Ljava/lang/String;

    return-object p0
.end method
