.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;
.super Ljava/lang/Object;
.source "OutputButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field private static bitmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionId:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private thumbnail:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->bitmaps:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->name:Ljava/lang/String;

    .line 234
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->actionId:Ljava/lang/String;

    .line 235
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->title:Ljava/lang/String;

    .line 236
    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->content:Ljava/lang/String;

    .line 237
    iput-object p5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->thumbnail:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)Ljava/lang/String;
    .locals 0

    .line 224
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->thumbnail:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;)Ljava/lang/String;
    .locals 0

    .line 224
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()Ljava/util/Map;
    .locals 1

    .line 224
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->bitmaps:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .locals 0

    .line 245
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->actionId:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    .line 253
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 241
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 0

    .line 257
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->thumbnail:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 249
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputButtonView$Entry;->title:Ljava/lang/String;

    return-object p0
.end method
