.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;
.super Ljava/lang/Object;
.source "AiFunctionEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private metaData:Lcom/zte/aifunctions/metadata/entry/MetaData;

.field private thumbnails:[I

.field private type:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;Lcom/zte/aifunctions/metadata/entry/MetaData;I[I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->type:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    .line 31
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->metaData:Lcom/zte/aifunctions/metadata/entry/MetaData;

    .line 32
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->content:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->thumbnails:[I

    return-void
.end method

.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;Lcom/zte/aifunctions/metadata/entry/MetaData;Ljava/lang/String;[I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->type:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    .line 24
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->metaData:Lcom/zte/aifunctions/metadata/entry/MetaData;

    .line 25
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->content:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->thumbnails:[I

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getMetaData()Lcom/zte/aifunctions/metadata/entry/MetaData;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->metaData:Lcom/zte/aifunctions/metadata/entry/MetaData;

    return-object p0
.end method

.method public getThumbnails()[I
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->thumbnails:[I

    return-object p0
.end method

.method public getType()Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;->type:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    return-object p0
.end method
