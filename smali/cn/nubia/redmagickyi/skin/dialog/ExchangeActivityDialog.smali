.class public Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "ExchangeActivityDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog$OnOperateListener;
    }
.end annotation


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnUpdate:Landroid/widget/Button;

.field private etCode:Landroid/widget/EditText;

.field private ivClose:Landroid/widget/ImageView;

.field private onOperateListener:Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog$OnOperateListener;

.field private tvMessage:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog$OnOperateListener;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->onOperateListener:Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog$OnOperateListener;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 142
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getContentView()I
    .locals 0

    .line 35
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->dialog_change_skin_exchange:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 4

    .line 40
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->ivClose:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->et_code:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->etCode:Landroid/widget/EditText;

    const/4 v0, 0x1

    .line 43
    new-array v1, v0, [Landroid/text/InputFilter;

    new-instance v2, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog$1;-><init>(Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 59
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->tvTitle:Landroid/widget/TextView;

    .line 60
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_message:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->tvMessage:Landroid/widget/TextView;

    .line 61
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->btnCancel:Landroid/widget/Button;

    .line 62
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 64
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_update:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->btnUpdate:Landroid/widget/Button;

    .line 66
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 68
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->onPrepare()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 126
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    if-eq p1, v0, :cond_2

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_update:I

    if-ne p1, v0, :cond_3

    .line 129
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->etCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 130
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->etCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 131
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->onOperateListener:Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog$OnOperateListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->etCode:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog$OnOperateListener;->onExchangeClick(Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->onOperateListener:Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog$OnOperateListener;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog$OnOperateListener;->onWatchActivityClick()V

    .line 135
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->dismiss()V

    goto :goto_1

    .line 127
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->dismiss()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onExchangeExpired()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->ivClose:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->etCode:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->tvMessage:Landroid/widget/TextView;

    sget v3, Lcn/nubia/redmagickyi/main/R$string;->change_skin_dialog_btn_exchange_activity_expired:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public onExchangeFail(Z)V
    .locals 4

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->ivClose:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->etCode:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->tvMessage:Landroid/widget/TextView;

    sget v3, Lcn/nubia/redmagickyi/main/R$string;->change_skin_dialog_btn_exchange_activity_fail:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->btnUpdate:Landroid/widget/Button;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->change_skin_dialog_btn_exchange_activity:I

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onExchangeSuccess()V
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->dismiss()V

    return-void
.end method

.method public onPrepare()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->ivClose:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->etCode:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->etCode:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->tvMessage:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 80
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeActivityDialog;->btnUpdate:Landroid/widget/Button;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->change_skin_dialog_btn_exchange:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 147
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method
