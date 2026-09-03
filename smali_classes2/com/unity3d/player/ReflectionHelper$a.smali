.class Lcom/unity3d/player/ReflectionHelper$a;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/ReflectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public volatile a:Ljava/lang/reflect/Member;

.field private final b:Ljava/lang/Class;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p1, p0, Lcom/unity3d/player/ReflectionHelper$a;->b:Ljava/lang/Class;

    .line 416
    iput-object p2, p0, Lcom/unity3d/player/ReflectionHelper$a;->c:Ljava/lang/String;

    .line 417
    iput-object p3, p0, Lcom/unity3d/player/ReflectionHelper$a;->d:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/lit16 p1, p1, 0x20f

    mul-int/lit8 p1, p1, 0x1f

    .line 419
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x1f

    .line 420
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    .line 421
    iput p1, p0, Lcom/unity3d/player/ReflectionHelper$a;->e:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 431
    :cond_0
    instance-of v1, p1, Lcom/unity3d/player/ReflectionHelper$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 432
    check-cast p1, Lcom/unity3d/player/ReflectionHelper$a;

    .line 433
    iget v1, p0, Lcom/unity3d/player/ReflectionHelper$a;->e:I

    iget v3, p1, Lcom/unity3d/player/ReflectionHelper$a;->e:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/unity3d/player/ReflectionHelper$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/player/ReflectionHelper$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unity3d/player/ReflectionHelper$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/player/ReflectionHelper$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/unity3d/player/ReflectionHelper$a;->b:Ljava/lang/Class;

    iget-object p1, p1, Lcom/unity3d/player/ReflectionHelper$a;->b:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 0

    .line 425
    iget p0, p0, Lcom/unity3d/player/ReflectionHelper$a;->e:I

    return p0
.end method
