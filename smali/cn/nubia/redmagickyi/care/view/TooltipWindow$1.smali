.class Lcn/nubia/redmagickyi/care/view/TooltipWindow$1;
.super Landroid/os/Handler;
.source "TooltipWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/care/view/TooltipWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/view/TooltipWindow;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/view/TooltipWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow$1;->this$0:Lcn/nubia/redmagickyi/care/view/TooltipWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 37
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow$1;->this$0:Lcn/nubia/redmagickyi/care/view/TooltipWindow;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->access$000(Lcn/nubia/redmagickyi/care/view/TooltipWindow;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow$1;->this$0:Lcn/nubia/redmagickyi/care/view/TooltipWindow;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->access$000(Lcn/nubia/redmagickyi/care/view/TooltipWindow;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow$1;->this$0:Lcn/nubia/redmagickyi/care/view/TooltipWindow;

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->access$000(Lcn/nubia/redmagickyi/care/view/TooltipWindow;)Landroid/widget/PopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
