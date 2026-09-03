.class Lcn/nubia/redmagickyi/care/view/WifiDialog$2;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Lcn/nubia/redmagickyi/care/view/WifiDialog$OnGoCommitListener;


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

    .line 66
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$2;->this$0:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommit()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog$2;->this$0:Lcn/nubia/redmagickyi/care/view/WifiDialog;

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->access$100(Lcn/nubia/redmagickyi/care/view/WifiDialog;)V

    return-void
.end method
