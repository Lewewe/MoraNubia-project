.class public Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ActionViewHolder.java"


# instance fields
.field public index:I

.field public itemBg:Landroid/widget/RelativeLayout;

.field public ivSound:Landroid/widget/ImageView;

.field public progressPlay:Landroid/widget/ProgressBar;

.field public tvText:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->tvText:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->China_CN:Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    iget-object v1, v1, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->tvText:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->tvText:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->tvText:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 39
    :goto_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_sound_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->ivSound:Landroid/widget/ImageView;

    .line 40
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->progress_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    .line 41
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->item_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/viewholder/ActionViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    return-void
.end method
