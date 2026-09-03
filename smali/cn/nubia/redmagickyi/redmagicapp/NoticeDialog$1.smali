.class Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog$1;
.super Ljava/lang/Object;
.source "NoticeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/network/bean/NoticeBean;Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog$OnEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 51
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 52
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/NoticeDialog;->onBackPress()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
