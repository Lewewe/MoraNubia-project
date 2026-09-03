.class Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$1;
.super Ljava/lang/Object;
.source "CustomWakeupDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->initView(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->access$000(Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->access$100(Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 86
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->access$100(Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;)Landroid/widget/Button;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$drawable;->app_start_commit_btn_selector:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->access$100(Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->access$100(Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;)Landroid/widget/Button;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_btn_disable:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
