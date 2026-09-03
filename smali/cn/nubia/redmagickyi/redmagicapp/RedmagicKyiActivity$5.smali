.class Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;
.super Ljava/lang/Object;
.source "RedmagicKyiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->reqFineLocationPermission(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$hasFineLocationPermission:Z

.field final synthetic val$isGpsOpen:Z


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;ZZLandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 604
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    iput-boolean p2, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;->val$hasFineLocationPermission:Z

    iput-boolean p3, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;->val$isGpsOpen:Z

    iput-object p4, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 607
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    iget-boolean v2, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;->val$hasFineLocationPermission:Z

    iget-boolean v3, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;->val$isGpsOpen:Z

    new-instance v4, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5$1;

    invoke-direct {v4, p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;-><init>(Landroid/content/Context;ZZLcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog$OnDismissListener;)V

    .line 623
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->show()V

    return-void
.end method
