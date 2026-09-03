.class public final Lcom/unity3d/player/l;
.super Landroid/app/Dialog;
.source "l.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/l$a1;
    }
.end annotation


# static fields
.field private static c:I = 0x61000000

.field private static d:I = -0x1


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/unity3d/player/UnityPlayer;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IZZZLjava/lang/String;IZ)V
    .locals 13

    move-object v9, p0

    .line 39
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object v0, p1

    .line 40
    iput-object v0, v9, Lcom/unity3d/player/l;->a:Landroid/content/Context;

    move-object v0, p2

    .line 41
    iput-object v0, v9, Lcom/unity3d/player/l;->b:Lcom/unity3d/player/UnityPlayer;

    .line 43
    invoke-virtual {p0}, Lcom/unity3d/player/l;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 45
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, 0x0

    .line 46
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 47
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 49
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    invoke-virtual {p0}, Lcom/unity3d/player/l;->createSoftInputView()Landroid/view/View;

    move-result-object v10

    .line 51
    invoke-virtual {p0, v10}, Lcom/unity3d/player/l;->setContentView(Landroid/view/View;)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    const/4 v1, 0x2

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, 0x8000000

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, 0x4000000

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 56
    invoke-static {}, Lcom/unity3d/player/l$a1;->access$000()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/EditText;

    .line 57
    invoke-static {}, Lcom/unity3d/player/l$a1;->access$100()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Button;

    move-object v0, p0

    move-object v1, v11

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    .line 58
    invoke-direct/range {v0 .. v8}, Lcom/unity3d/player/l;->a(Landroid/widget/EditText;Ljava/lang/String;IZZZLjava/lang/String;I)V

    if-eqz v12, :cond_0

    .line 60
    invoke-virtual {v12, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v11, :cond_1

    .line 63
    invoke-virtual {v11}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result v0

    iput v0, v9, Lcom/unity3d/player/l;->e:I

    :cond_1
    move/from16 v0, p10

    .line 65
    invoke-virtual {p0, v0}, Lcom/unity3d/player/l;->a(Z)V

    .line 66
    iget-object v0, v9, Lcom/unity3d/player/l;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/unity3d/player/l$1;

    invoke-direct {v1, p0, v10}, Lcom/unity3d/player/l$1;-><init>(Lcom/unity3d/player/l;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    if-eqz v11, :cond_2

    .line 92
    new-instance v0, Lcom/unity3d/player/l$2;

    invoke-direct {v0, p0}, Lcom/unity3d/player/l$2;-><init>(Lcom/unity3d/player/l;)V

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 100
    invoke-virtual {v11}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    return-void
.end method

.method private static a(IZZZ)I
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x8000

    goto :goto_0

    :cond_0
    const/high16 p1, 0x80000

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/high16 p2, 0x20000

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    or-int/2addr p1, p2

    if-eqz p3, :cond_2

    const/16 v0, 0x80

    :cond_2
    or-int/2addr p1, v0

    if-ltz p0, :cond_4

    const/16 p2, 0xb

    if-gt p0, p2, :cond_4

    const/16 p2, 0xc

    .line 164
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    aget p0, p2, p0

    and-int/lit8 p2, p0, 0x2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    or-int/2addr p0, p1

    :goto_2
    return p0

    :cond_4
    return p1

    :array_0
    .array-data 4
        0x1
        0x4001
        0x3002
        0x11
        0x2
        0x3
        0x2061
        0x21
        0x1
        0x4021
        0x11
        0x2002
    .end array-data
.end method

.method private a(Landroid/widget/EditText;Ljava/lang/String;IZZZLjava/lang/String;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 136
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p1, p7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 138
    sget p2, Lcom/unity3d/player/l;->c:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 139
    invoke-static {p3, p4, p5, p6}, Lcom/unity3d/player/l;->a(IZZZ)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    const/high16 p2, 0x2000000

    .line 140
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 p2, 0x1

    if-lez p8, :cond_1

    .line 142
    new-array p3, p2, [Landroid/text/InputFilter;

    new-instance p4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {p4, p8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p5, 0x0

    aput-object p4, p3, p5

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 145
    :cond_1
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    .line 147
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setClickable(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .line 171
    invoke-static {}, Lcom/unity3d/player/l$a1;->access$000()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 175
    :cond_0
    iget-object p0, p0, Lcom/unity3d/player/l;->b:Lcom/unity3d/player/UnityPlayer;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputStr(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/unity3d/player/l;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/unity3d/player/l;->b:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/unity3d/player/l;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/unity3d/player/l;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/unity3d/player/l;Ljava/lang/String;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/l;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/unity3d/player/l;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/unity3d/player/l;->a:Landroid/content/Context;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 242
    invoke-static {}, Lcom/unity3d/player/l$a1;->access$000()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/l;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 277
    iget-object p0, p0, Lcom/unity3d/player/l;->a:Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 281
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 284
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object p0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(I)V
    .locals 3

    .line 256
    invoke-static {}, Lcom/unity3d/player/l$a1;->access$000()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/l;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    .line 258
    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void

    .line 262
    :cond_0
    new-array p1, v0, [Landroid/text/InputFilter;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_1
    return-void
.end method

.method public final a(II)V
    .locals 1

    .line 269
    invoke-static {}, Lcom/unity3d/player/l$a1;->access$000()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/l;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    add-int/2addr p2, p1

    if-lt v0, p2, :cond_0

    .line 270
    invoke-virtual {p0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 247
    invoke-static {}, Lcom/unity3d/player/l$a1;->access$000()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/l;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 5

    .line 105
    invoke-static {}, Lcom/unity3d/player/l$a1;->access$000()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 106
    invoke-static {}, Lcom/unity3d/player/l$a1;->access$100()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/unity3d/player/l;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 107
    invoke-static {}, Lcom/unity3d/player/l$a1;->access$300()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/unity3d/player/l;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 112
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 113
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 114
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 115
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 117
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 118
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 119
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 121
    :cond_1
    sget p1, Lcom/unity3d/player/l;->d:I

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 122
    iget p1, p0, Lcom/unity3d/player/l;->e:I

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    const/4 p1, 0x1

    .line 123
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    const/4 v3, 0x0

    .line 124
    move-object v4, v3

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 126
    iget p0, p0, Lcom/unity3d/player/l;->e:I

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setTextColor(I)V

    .line 127
    sget p0, Lcom/unity3d/player/l;->d:I

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 151
    iget-object p0, p0, Lcom/unity3d/player/l;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputStr(Ljava/lang/String;IZ)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected final createSoftInputView()Landroid/view/View;
    .locals 9

    .line 188
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unity3d/player/l;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    sget v1, Lcom/unity3d/player/l;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 190
    invoke-static {}, Lcom/unity3d/player/l$a1;->access$300()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 191
    new-instance v1, Lcom/unity3d/player/l$3;

    iget-object v3, p0, Lcom/unity3d/player/l;->a:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lcom/unity3d/player/l$3;-><init>(Lcom/unity3d/player/l;Landroid/content/Context;)V

    .line 214
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 215
    invoke-static {}, Lcom/unity3d/player/l$a1;->access$100()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 216
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-static {}, Lcom/unity3d/player/l$a1;->access$000()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setId(I)V

    .line 218
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 220
    new-instance v1, Landroid/widget/Button;

    iget-object v3, p0, Lcom/unity3d/player/l;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/unity3d/player/l;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "string"

    const-string v7, "android"

    const-string v8, "ok"

    invoke-virtual {v3, v8, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 221
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    .line 222
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 223
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    invoke-static {}, Lcom/unity3d/player/l$a1;->access$100()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 225
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 226
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 227
    invoke-static {}, Lcom/unity3d/player/l$a1;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Lcom/unity3d/player/l$4;

    invoke-direct {v2, p0}, Lcom/unity3d/player/l$4;-><init>(Lcom/unity3d/player/l;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/16 p0, 0x10

    .line 236
    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-object v0
.end method

.method public final onBackPressed()V
    .locals 2

    .line 183
    invoke-direct {p0}, Lcom/unity3d/player/l;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/l;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 179
    invoke-direct {p0}, Lcom/unity3d/player/l;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unity3d/player/l;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
