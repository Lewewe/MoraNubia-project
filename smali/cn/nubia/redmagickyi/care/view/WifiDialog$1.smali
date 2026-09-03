.class Lcn/nubia/redmagickyi/care/view/WifiDialog$1;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/care/view/WifiDialog;->showWifiGpsPermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/view/WifiDialog;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/view/WifiDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$1;->this$0:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$1;->this$0:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->access$000(Lcn/nubia/redmagickyi/care/view/WifiDialog;)Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$1;->this$0:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->access$002(Lcn/nubia/redmagickyi/care/view/WifiDialog;Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;)Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;

    :cond_0
    return-void
.end method
