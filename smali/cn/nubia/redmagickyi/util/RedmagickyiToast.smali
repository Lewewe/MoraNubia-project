.class public Lcn/nubia/redmagickyi/util/RedmagickyiToast;
.super Ljava/lang/Object;
.source "RedmagickyiToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/RedmagickyiToast$SingleInstance;,
        Lcn/nubia/redmagickyi/util/RedmagickyiToast$Duration;
    }
.end annotation


# instance fields
.field private content:Ljava/lang/CharSequence;

.field private mToast:Landroid/widget/Toast;

.field private toastParams:[I

.field private weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 30
    new-array v0, v0, [I

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->toastParams:[I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/util/RedmagickyiToast$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;-><init>()V

    return-void
.end method

.method private static getInstance()Lcn/nubia/redmagickyi/util/RedmagickyiToast;
    .locals 1

    .line 35
    sget-object v0, Lcn/nubia/redmagickyi/util/RedmagickyiToast$SingleInstance;->instance:Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    return-object v0
.end method

.method public static makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;
    .locals 2

    if-nez p0, :cond_0

    .line 46
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 48
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->getInstance()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    return-object p0
.end method

.method public static makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;
    .locals 1

    if-nez p0, :cond_0

    .line 54
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 56
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->getInstance()Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    return-object p0
.end method

.method private makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;
    .locals 7

    .line 60
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->mToast:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 62
    iput-object v1, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->mToast:Landroid/widget/Toast;

    .line 64
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->weakActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->weakActivity:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 68
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 69
    iput-object v1, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 72
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    :cond_3
    if-nez p1, :cond_4

    .line 75
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 77
    :cond_4
    instance-of v0, p1, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;

    if-eqz v0, :cond_5

    .line 78
    iput-object p2, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->content:Ljava/lang/CharSequence;

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->mToast:Landroid/widget/Toast;

    goto :goto_1

    .line 80
    :cond_5
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->mToast:Landroid/widget/Toast;

    .line 81
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->toastParams:[I

    invoke-virtual {v0}, Landroid/widget/Toast;->getGravity()I

    move-result v0

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 82
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->toastParams:[I

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getXOffset()I

    move-result v2

    const/4 v4, 0x1

    aput v2, v0, v4

    .line 83
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->toastParams:[I

    iget-object v2, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getYOffset()I

    move-result v2

    const/4 v4, 0x2

    aput v2, v0, v4

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->toastParams:[I

    aget v2, v0, v3

    const/16 v5, 0x50

    and-int/2addr v2, v5

    if-eqz v2, :cond_6

    aget v2, v0, v4

    if-gtz v2, :cond_6

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcn/nubia/redmagickyi/main/R$dimen;->toast_marigin_bottom:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    aput v2, v0, v4

    .line 87
    :cond_6
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcn/nubia/redmagickyi/main/R$layout;->layout_toast:I

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    iput-object p2, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->content:Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p2, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 90
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p2, p3}, Landroid/widget/Toast;->setDuration(I)V

    .line 91
    iget-object p2, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcn/nubia/redmagickyi/main/R$dimen;->toast_marigin_bottom:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p2, v5, v3, p1}, Landroid/widget/Toast;->setGravity(III)V

    :goto_1
    return-object p0
.end method


# virtual methods
.method public getView()Landroid/widget/Toast;
    .locals 0

    .line 97
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public original()Lcn/nubia/redmagickyi/util/RedmagickyiToast;
    .locals 5

    .line 105
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->layout_toast_original:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 107
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 108
    iget-object v2, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->content:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 111
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->mToast:Landroid/widget/Toast;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->toastParams:[I

    aget v2, v1, v3

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v1, v1, v4

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/Toast;->setGravity(III)V

    :cond_0
    return-object p0
.end method

.method public show()V
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
