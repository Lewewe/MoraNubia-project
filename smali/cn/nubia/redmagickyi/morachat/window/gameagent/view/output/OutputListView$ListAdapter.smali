.class Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OutputListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$1;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 166
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;)[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;)[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    move-result-object p0

    array-length p0, p0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 130
    check-cast p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;I)V
    .locals 5

    .line 140
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;)[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;

    move-result-object v0

    aget-object v0, v0, p2

    .line 141
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;)Landroid/widget/TextView;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;->access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 143
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;->access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :goto_0
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;->access$800(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 151
    :cond_1
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;->access$800(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;->access$800(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_1
    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$1;

    invoke-direct {v1, p0, p2, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;ILcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 130
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;
    .locals 3

    .line 135
    new-instance p2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_gameagent_window_menu_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter$ListHolder;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$ListAdapter;Landroid/view/View;)V

    return-object p2
.end method
