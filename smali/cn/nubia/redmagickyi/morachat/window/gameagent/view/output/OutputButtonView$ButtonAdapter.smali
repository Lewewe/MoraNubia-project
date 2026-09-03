.class Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OutputButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$1;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;)[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;)[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

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

    .line 172
    check-cast p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;I)V
    .locals 5

    .line 182
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;)[Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;

    move-result-object v0

    aget-object v0, v0, p2

    .line 183
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->access$700()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 188
    invoke-static {v1}, Lcn/nubia/redmagickyi/util/BitmapUtils;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 189
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 190
    array-length v2, v1

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 191
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_1
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;->access$600(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    :goto_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;->access$800(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;)Lcn/nubia/redmagickyi/view/StrokeTextView;

    move-result-object v1

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$1;

    invoke-direct {v1, p0, p2, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;ILcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)V

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

    .line 172
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;
    .locals 3

    .line 177
    new-instance p2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;->access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_gameagent_window_menu_button_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter$ButtonHolder;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$ButtonAdapter;Landroid/view/View;)V

    return-object p2
.end method
