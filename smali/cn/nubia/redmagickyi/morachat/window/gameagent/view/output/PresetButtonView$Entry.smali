.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;
.super Ljava/lang/Object;
.source "PresetButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field private static final THUMBNAIL_ACCOMPANY:Ljava/lang/String; = "THUMBNAIL_ACCOMPANY"

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

.field private thumbnail:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->bitmaps:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->actionId:Ljava/lang/String;

    .line 253
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->content:Ljava/lang/String;

    .line 254
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->thumbnail:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)Ljava/lang/String;
    .locals 0

    .line 244
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->thumbnail:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)Ljava/lang/String;
    .locals 0

    .line 244
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->content:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Landroid/content/Context;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;
    .locals 0

    .line 244
    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->createAccompanyEntry(Landroid/content/Context;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800()Ljava/util/Map;
    .locals 1

    .line 244
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->bitmaps:Ljava/util/Map;

    return-object v0
.end method

.method private static createAccompanyEntry(Landroid/content/Context;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;
    .locals 3

    .line 258
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->morachat_gameagent_window_accompany:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "THUMBNAIL_ACCOMPANY"

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .locals 0

    .line 262
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->actionId:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    .line 266
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 0

    .line 270
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;->thumbnail:Ljava/lang/String;

    return-object p0
.end method
