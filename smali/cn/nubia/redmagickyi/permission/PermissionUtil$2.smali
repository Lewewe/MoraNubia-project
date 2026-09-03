.class Lcn/nubia/redmagickyi/permission/PermissionUtil$2;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/permission/PermissionUtil;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil$2;->this$0:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    iput-object p2, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcn/nubia/redmagickyi/permission/PermissionUtil$2;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->gotoAppSettingsActivity(Landroid/content/Context;)V

    return-void
.end method
