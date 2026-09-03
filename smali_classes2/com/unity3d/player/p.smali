.class final Lcom/unity3d/player/p;
.super Ljava/lang/Object;
.source "p.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/p$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Ljava/lang/Class;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/p;->a:Ljava/util/HashMap;

    .line 17
    iput-object p1, p0, Lcom/unity3d/player/p;->b:Ljava/lang/Class;

    .line 18
    iput-object p2, p0, Lcom/unity3d/player/p;->c:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/unity3d/player/p$a;)V
    .locals 2

    .line 27
    :try_start_0
    iget-object p0, p0, Lcom/unity3d/player/p;->b:Ljava/lang/Class;

    iget-object v0, p2, Lcom/unity3d/player/p$a;->a:[Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    iput-object p0, p2, Lcom/unity3d/player/p$a;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception while trying to get method "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 30
    iput-object p0, p2, Lcom/unity3d/player/p$a;->b:Ljava/lang/reflect/Method;

    :goto_0
    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/unity3d/player/p;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-nez v0, :cond_0

    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "No definition for method "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " can be found"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return-object v1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/p;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/p$a;

    iget-object v3, v0, Lcom/unity3d/player/p$a;->b:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/unity3d/player/p;->a(Ljava/lang/String;Lcom/unity3d/player/p$a;)V

    .line 44
    :cond_1
    iget-object v3, v0, Lcom/unity3d/player/p$a;->b:Ljava/lang/reflect/Method;

    if-nez v3, :cond_2

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Unable to create method: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    return-object v1

    .line 50
    :cond_2
    :try_start_0
    array-length v3, p2

    if-nez v3, :cond_3

    .line 51
    iget-object p2, v0, Lcom/unity3d/player/p$a;->b:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/unity3d/player/p;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 53
    :cond_3
    iget-object v0, v0, Lcom/unity3d/player/p$a;->b:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/unity3d/player/p;->c:Ljava/lang/Object;

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error trying to call delegated method "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/unity3d/player/g;->Log(ILjava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/unity3d/player/p;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/unity3d/player/p$a;

    invoke-direct {v1, p0, p2}, Lcom/unity3d/player/p$a;-><init>(Lcom/unity3d/player/p;[Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
