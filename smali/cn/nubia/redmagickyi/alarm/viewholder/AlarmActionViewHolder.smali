.class public Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AlarmActionViewHolder.java"


# instance fields
.field public checkBox:Landroid/widget/CheckBox;

.field public index:I

.field public itemBg:Landroid/widget/RelativeLayout;

.field public ivSound:Landroid/widget/ImageView;

.field public progressPlay:Landroid/widget/ProgressBar;

.field public tvText:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 25
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->tvText:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    .line 27
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_sound_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->ivSound:Landroid/widget/ImageView;

    .line 29
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->progress_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->progressPlay:Landroid/widget/ProgressBar;

    .line 30
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->item_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    .line 31
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->alarm_check:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmActionViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-void
.end method
