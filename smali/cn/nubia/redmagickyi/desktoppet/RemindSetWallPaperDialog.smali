.class public Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "RemindSetWallPaperDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog$OnDismissListener;
    }
.end annotation


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnUpdate:Landroid/widget/Button;

.field private cbRemind:Landroid/widget/CheckBox;

.field private isUpdateClicked:Z

.field private onDismissListener:Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog$OnDismissListener;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->onDismissListener:Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog$OnDismissListener;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 73
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    .line 74
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->onDismissListener:Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog$OnDismissListener;

    if-eqz v0, :cond_2

    .line 75
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->isUpdateClicked:Z

    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->cbRemind:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v1, v2}, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog$OnDismissListener;->onDismiss(ZZ)V

    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getContentView()I
    .locals 0

    .line 30
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->dialog_pet_remind_set_layout:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 2

    .line 35
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->cb_remind:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->cbRemind:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 37
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 38
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->btnCancel:Landroid/widget/Button;

    .line 40
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    iget-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->btnCancel:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 42
    iget-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_update:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->btnUpdate:Landroid/widget/Button;

    .line 44
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    iget-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 46
    iget-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 52
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    if-eq p1, v0, :cond_1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_update:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->isUpdateClicked:Z

    .line 56
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->dismiss()V

    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/desktoppet/RemindSetWallPaperDialog;->isUpdateClicked:Z

    .line 68
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method
