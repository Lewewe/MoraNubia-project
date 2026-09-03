.class final Lcom/unity3d/player/l$a1;
.super Ljava/lang/Object;
.source "l.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a1"
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 292
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lcom/unity3d/player/l$a1;->a:I

    .line 293
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lcom/unity3d/player/l$a1;->b:I

    .line 294
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lcom/unity3d/player/l$a1;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 291
    sget v0, Lcom/unity3d/player/l$a1;->b:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 291
    sget v0, Lcom/unity3d/player/l$a1;->a:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 291
    sget v0, Lcom/unity3d/player/l$a1;->c:I

    return v0
.end method
