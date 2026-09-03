.class public Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "CustomWakeupDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$Callback;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH:I = 0x6

.field private static final MIN_LENGTH:I = 0x4

.field private static chP:Ljava/util/regex/Pattern;


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnConfirm:Landroid/widget/Button;

.field private callback:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$Callback;

.field private context:Landroid/content/Context;

.field private edit:Landroid/widget/EditText;

.field private imgClose:Landroid/widget/ImageView;

.field private tvBirthday:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-string v0, "[\u4e00-\u9fa5]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->chP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$Callback;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->callback:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$Callback;

    .line 39
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;Ljava/lang/String;)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->isInputValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;)Landroid/widget/Button;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->btnConfirm:Landroid/widget/Button;

    return-object p0
.end method

.method private checkStringChinese(Ljava/lang/String;)Z
    .locals 4

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 137
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 138
    sget-object v2, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->chP:Ljava/util/regex/Pattern;

    aget-char v3, p0, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isInputValid(Ljava/lang/String;)Z
    .locals 3

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 127
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->checkStringChinese(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->edit:Landroid/widget/EditText;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/InputMethodUtils;->hideInputMethod(Landroid/view/View;)V

    .line 154
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    return-void
.end method

.method public getContentView()I
    .locals 0

    .line 44
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->morachat_entrance_layout_custom_wakeup_words:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 3

    .line 49
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->tvTitle:Landroid/widget/TextView;

    .line 50
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->tvTitle:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 52
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->imgClose:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->btnCancel:Landroid/widget/Button;

    .line 55
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 57
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->btnCancel:Landroid/widget/Button;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 60
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_agree:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->btnConfirm:Landroid/widget/Button;

    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 64
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->btnConfirm:Landroid/widget/Button;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 66
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 67
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->edit:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->edit:Landroid/widget/EditText;

    .line 70
    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 71
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->edit:Landroid/widget/EditText;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$1;-><init>(Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 98
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    if-ne p1, v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->dismiss()V

    goto :goto_0

    .line 100
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->dismiss()V

    goto :goto_0

    .line 102
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_agree:I

    if-ne p1, v0, :cond_4

    .line 103
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->callback:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$Callback;

    if-eqz p1, :cond_3

    .line 104
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->edit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->isInputValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->callback:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$Callback;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$Callback;->onWordValid(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->callback:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$Callback;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$Callback;->onWordInvalid(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->dismiss()V

    :cond_4
    :goto_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 148
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->edit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog;->callback:Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$Callback;

    if-eqz p1, :cond_0

    .line 119
    invoke-interface {p1}, Lcn/nubia/redmagickyi/morachat/entrance/layout/CustomWakeupDialog$Callback;->onShow()V

    .line 121
    :cond_0
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method
