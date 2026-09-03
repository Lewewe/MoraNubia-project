.class public Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "AlarmLabelDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog$OnAlarmLabelInputListener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private btnCancel:Landroid/widget/Button;

.field private btnCommit:Landroid/widget/Button;

.field private etLabel:Landroid/widget/EditText;

.field private ivClose:Landroid/widget/ImageView;

.field private onAlarmLabelInputListener:Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog$OnAlarmLabelInputListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog$OnAlarmLabelInputListener;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->onAlarmLabelInputListener:Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog$OnAlarmLabelInputListener;

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getContentView()I
    .locals 0

    .line 62
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->alarm_label_dialog_view:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 2

    .line 67
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->ivClose:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->et_label:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->etLabel:Landroid/widget/EditText;

    .line 70
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->btnCancel:Landroid/widget/Button;

    .line 71
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->btnCancel:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 73
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_commit:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->btnCommit:Landroid/widget/Button;

    .line 75
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->btnCommit:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 77
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->btnCommit:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 45
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    if-eq p1, v0, :cond_3

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_commit:I

    if-ne p1, v0, :cond_4

    .line 48
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->etLabel:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->activity:Landroid/app/Activity;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->alarm_input_label:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->onAlarmLabelInputListener:Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog$OnAlarmLabelInputListener;

    if-eqz v0, :cond_2

    .line 54
    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog$OnAlarmLabelInputListener;->onAlarmLabelInputClick(Ljava/lang/String;)V

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->dismiss()V

    goto :goto_1

    .line 46
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->dismiss()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setEditLableText(Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->etLabel:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/dialog/AlarmLabelDialog;->etLabel:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method
