.class public abstract Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "AbstractNLPOnlineQueryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcom/zte/nlp/model/NLPResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static authValuePostEncrypt:Ljava/lang/String;

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .line 23
    sget-object v0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;->authValuePostEncrypt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    sput-object p0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;->authValuePostEncrypt:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;->load()Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;

    move-result-object p0

    return-object p0
.end method

.method public load()Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;
    .locals 1

    .line 30
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "requestText cannot be null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;
    .locals 2

    .line 34
    new-instance v0, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;-><init>(Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController;Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$1;)V

    .line 35
    invoke-static {v0, p1}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->access$102(Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    invoke-static {v0, p2}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->access$202(Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    invoke-static {v0, p3}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->access$302(Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    const-class p1, Lcom/zte/nlp/model/NLPResponse;

    invoke-virtual {v0, p1}, Lcom/zte/nlp/controller/AbstractNLPOnlineQueryController$Task;->load(Ljava/lang/Class;)Ljava/lang/Object;

    return-object p0
.end method
