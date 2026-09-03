.class public Lcn/nubia/redmagickyi/skin/viewholder/StoryEmptyViewHolder;
.super Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;
.source "StoryEmptyViewHolder.java"


# instance fields
.field public describe:Landroid/widget/TextView;

.field public hint:Landroid/widget/TextView;

.field public index:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 14
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/viewholder/StoryViewHolder;-><init>(Landroid/view/View;)V

    .line 15
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->describe:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/viewholder/StoryEmptyViewHolder;->describe:Landroid/widget/TextView;

    .line 16
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/viewholder/StoryEmptyViewHolder;->index:Landroid/widget/TextView;

    .line 18
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/viewholder/StoryEmptyViewHolder;->hint:Landroid/widget/TextView;

    .line 20
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/viewholder/StoryEmptyViewHolder;->title:Landroid/widget/TextView;

    .line 22
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
