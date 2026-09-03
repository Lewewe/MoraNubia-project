.class Lcn/nubia/redmagickyi/permission/PermissionUtil$1;
.super Ljava/lang/Object;
.source "PermissionUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/permission/PermissionUtil;->showPermissionGuide(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/permission/PermissionUtil;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/permission/PermissionUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil$1;->this$0:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil$1;->this$0:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-static {p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->access$000(Lcn/nubia/redmagickyi/permission/PermissionUtil;)V

    return-void
.end method
