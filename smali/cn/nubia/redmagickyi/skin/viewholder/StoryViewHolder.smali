.class public Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StoryViewHolder.java"


# instance fields
.field public describe:Landroid/widget/TextView;

.field public hint:Landroid/widget/TextView;

.field public index:Landroid/widget/TextView;

.field public itemBg:Landroid/widget/LinearLayout;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 16
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 17
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->describe:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;->describe:Landroid/widget/TextView;

    .line 18
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;->index:Landroid/widget/TextView;

    .line 19
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 20
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;->hint:Landroid/widget/TextView;

    .line 21
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;->title:Landroid/widget/TextView;

    .line 23
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->item_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;->itemBg:Landroid/widget/LinearLayout;

    return-void
.end method
