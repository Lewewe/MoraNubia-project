.class public abstract Lcn/nubia/redmagickyi/user/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACTIVITY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcn/nubia/redmagickyi/user/base/BaseActivity;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private back:Landroid/widget/RelativeLayout;

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/nubia/redmagickyi/user/base/BaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field private title_text:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/user/base/BaseActivity;->ACTIVITY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static closeAllActivities()V
    .locals 2

    .line 130
    sget-object v0, Lcn/nubia/redmagickyi/user/base/BaseActivity;->ACTIVITY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 131
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/user/base/BaseActivity;

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->finish()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static closeAllActivitiesExcept(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/redmagickyi/user/base/BaseActivity;",
            ">;)V"
        }
    .end annotation

    .line 142
    sget-object v0, Lcn/nubia/redmagickyi/user/base/BaseActivity;->ACTIVITY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 143
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/user/base/BaseActivity;

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->finish()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static setDarkStatusIcon(Landroid/app/Activity;)V
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public SetTitle(Ljava/lang/String;)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/base/BaseActivity;->title_text:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public finishPage(Landroid/view/View;)V
    .locals 0

    .line 159
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->finish()V

    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 0

    .line 189
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method protected abstract initData()V
.end method

.method protected abstract initView()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back_bg:I

    if-ne p1, v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 183
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 184
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    .line 40
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/base/BaseActivity;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 41
    sget-object v0, Lcn/nubia/redmagickyi/user/base/BaseActivity;->ACTIVITY_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->setContentLayoutRes()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->setContentView(I)V

    .line 44
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->back_bg:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/base/BaseActivity;->back:Landroid/widget/RelativeLayout;

    .line 45
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->title:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/base/BaseActivity;->title_text:Landroid/widget/TextView;

    .line 46
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/base/BaseActivity;->back:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->setStatusBar()V

    .line 51
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->initView()V

    .line 52
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->initData()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 170
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 164
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method protected requestTranslucentStatusBar(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x2500

    invoke-virtual {p2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x500

    invoke-virtual {p2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method protected abstract setContentLayoutRes()I
.end method

.method protected setStatusBar()V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, -0x80000000

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 58
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->color_white_100:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 59
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v1, 0x1020002

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 61
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 64
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 66
    :cond_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/base/BaseActivity;->setDarkStatusIcon(Landroid/app/Activity;)V

    return-void
.end method
