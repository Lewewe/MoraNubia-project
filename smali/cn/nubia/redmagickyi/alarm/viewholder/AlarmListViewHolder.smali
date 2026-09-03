.class public Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AlarmListViewHolder.java"


# instance fields
.field public aSwitch:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

.field public imTag:Landroid/widget/ImageView;

.field public label:Landroid/widget/TextView;

.field public listBg:Landroid/widget/RelativeLayout;

.field public repeat_model:Landroid/widget/TextView;

.field public time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 25
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->time:Landroid/widget/TextView;

    .line 27
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    sget-object v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_YOUSHE:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->isSameTypeface(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->time:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_40_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;->TYPEFACE_MOCHIY:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->isSameTypeface(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$TypefacePath;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->time:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_30_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->time:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_35_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 35
    :goto_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->label:Landroid/widget/TextView;

    .line 36
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->repeat_model:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->repeat_model:Landroid/widget/TextView;

    .line 37
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->switch_check:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->aSwitch:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    .line 38
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->im_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->imTag:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->listBg:Landroid/widget/RelativeLayout;

    return-void
.end method
