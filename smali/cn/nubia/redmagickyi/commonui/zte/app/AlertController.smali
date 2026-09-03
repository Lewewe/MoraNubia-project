.class Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$ButtonHandler;,
        Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$RecycleListView;,
        Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$CheckedItemAdapter;,
        Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$AlertParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlertController"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mHandler:Landroid/os/Handler;

.field private mListItemLayout:I

.field private mListItems:[Ljava/lang/CharSequence;

.field private mListLayout:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mOnDialogLayoutChangeListener:Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$OnDialogLayoutChangeListener;

.field private mOnListItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mViewGetter:Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$ViewGetter;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$1;-><init>(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 125
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 127
    iput-object p3, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mWindow:Landroid/view/Window;

    .line 128
    new-instance p1, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$ButtonHandler;

    invoke-direct {p1, p2}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 130
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->resetNubiaAlertDialogLayout()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)Landroid/widget/Button;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)Landroid/os/Message;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$OnDialogLayoutChangeListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mOnDialogLayoutChangeListener:Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$OnDialogLayoutChangeListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)Landroid/widget/Button;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)Landroid/os/Message;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)Landroid/content/DialogInterface;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mOnListItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$602(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mOnListItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic access$702(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$802(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mListItems:[Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$902(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 139
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 143
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 144
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 147
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 148
    invoke-static {v3}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private createListView()Landroid/widget/ListView;
    .locals 6

    .line 360
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mContext:Landroid/content/Context;

    .line 361
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mListLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$RecycleListView;

    .line 364
    iget v1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mListItemLayout:I

    .line 365
    iget-object v2, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$CheckedItemAdapter;

    iget-object v3, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mContext:Landroid/content/Context;

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->text1:I

    iget-object v5, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mListItems:[Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v1, v4, v5}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 370
    :goto_0
    iput-object v2, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 372
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mOnListItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_1

    .line 373
    new-instance v1, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$3;-><init>(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 381
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->zte_select_dialog_item_bg_selector:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$RecycleListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private createMessageView()Landroid/view/View;
    .locals 3

    .line 353
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mListItemLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 354
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->text1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 355
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private registerDisplayListener()V
    .locals 2

    .line 481
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->unregisterDisplayListener()V

    .line 482
    new-instance v0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$4;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$4;-><init>(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 496
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 497
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method private selectContentView()I
    .locals 0

    .line 183
    iget p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mAlertDialogLayout:I

    return p0
.end method

.method private setupButtons()Z
    .locals 11

    .line 319
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->button1:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 320
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v3

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v2

    .line 330
    :goto_0
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcn/nubia/redmagickyi/main/R$id;->button2:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 331
    iget-object v5, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 334
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 336
    :cond_1
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    :goto_1
    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    .line 342
    :goto_2
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcn/nubia/redmagickyi/main/R$id;->buttonPanel:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v0, :cond_3

    .line 344
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    iget-object v5, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mWindow:Landroid/view/Window;

    .line 347
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object p0, v10, v3

    .line 346
    const-string v6, "setCloseOnTouchOutsideIfNotSet"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcn/nubia/redmagickyi/commonui/nubia/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method private setupCustomView()Z
    .locals 5

    .line 266
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 269
    iget-object v2, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mListItems:[Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mViewGetter:Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$ViewGetter;

    if-eqz v2, :cond_1

    .line 277
    invoke-interface {v2}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$ViewGetter;->getView()Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 278
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    .line 279
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->createMessageView()Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 270
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->createListView()Landroid/widget/ListView;

    move-result-object v2

    .line 271
    iget-object v4, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_3

    .line 272
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 273
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    move-object v3, v2

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    .line 285
    invoke-static {v3}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 286
    :cond_6
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v2, 0x20000

    invoke-virtual {p0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_7
    if-eqz v1, :cond_9

    .line 291
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 292
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 294
    :cond_8
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_9
    const/16 p0, 0x8

    .line 296
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_a
    :goto_2
    return v1
.end method

.method private setupDecor()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->zte_parentPanel:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/commonui/zte/widget/AlertDialogLayout;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 245
    iget-object v2, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mOnDialogLayoutChangeListener:Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$OnDialogLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/commonui/zte/widget/AlertDialogLayout;->setOnLayoutChangeListener(Lcn/nubia/redmagickyi/commonui/zte/widget/AlertDialogLayout$OnLayoutChangeListener;)V

    .line 247
    new-instance v1, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController$2;-><init>(Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 p0, 0x1

    .line 253
    invoke-virtual {v0, p0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 254
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method private setupTitle()Z
    .locals 3

    .line 304
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->alertTitle:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 309
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private setupView()V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->setupButtons()Z

    .line 260
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->setupTitle()Z

    .line 261
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->setupCustomView()Z

    return-void
.end method

.method private unregisterDisplayListener()V
    .locals 2

    .line 501
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 503
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 233
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0

    .line 235
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method public installContent(Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$OnDialogLayoutChangeListener;)V
    .locals 1

    .line 158
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mOnDialogLayoutChangeListener:Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$OnDialogLayoutChangeListener;

    .line 160
    :try_start_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    :goto_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->selectContentView()I

    move-result p1

    .line 165
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 166
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->setupView()V

    .line 167
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->setupDecor()V

    return-void
.end method

.method public onDismiss()V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->unregisterDisplayListener()V

    return-void
.end method

.method public onShown()V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->registerDisplayListener()V

    return-void
.end method

.method resetNubiaAlertDialogLayout()V
    .locals 1

    .line 475
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->zte_alert_dialog_center:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->zte_alert_dialog:I

    :goto_0
    iput v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mAlertDialogLayout:I

    .line 476
    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->zte_select_dialog:I

    iput v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mListLayout:I

    .line 477
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->zte_select_dialog_item_center:I

    goto :goto_1

    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->zte_select_dialog_item:I

    :goto_1
    iput v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mListItemLayout:I

    return-void
.end method

.method setAlertDialogLayout(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mAlertDialogLayout:I

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 213
    iget-object p4, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    .line 218
    iput-object p2, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 219
    iput-object p4, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    .line 226
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 222
    :cond_2
    iput-object p2, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 223
    iput-object p4, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 188
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 189
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setViewGetter(Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$ViewGetter;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mViewGetter:Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$ViewGetter;

    return-void
.end method

.method public updateUIModeTheme()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->mOnDialogLayoutChangeListener:Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$OnDialogLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->installContent(Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$OnDialogLayoutChangeListener;)V

    return-void
.end method
