.class public Lcom/zte/aigc/vo/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FAIL:I = 0x3e7

.field public static final SUCCESS:I


# instance fields
.field private code:I

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/zte/aigc/vo/Result;->code:I

    .line 23
    iput-object p2, p0, Lcom/zte/aigc/vo/Result;->message:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/zte/aigc/vo/Result;->data:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, v0, v1, p1}, Lcom/zte/aigc/vo/Result;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static returnFailResult(ILjava/lang/String;)Lcom/zte/aigc/vo/Result;
    .locals 2

    .line 28
    new-instance v0, Lcom/zte/aigc/vo/Result;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/zte/aigc/vo/Result;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static returnFailResult(Ljava/lang/String;)Lcom/zte/aigc/vo/Result;
    .locals 3

    .line 32
    new-instance v0, Lcom/zte/aigc/vo/Result;

    const/16 v1, 0x3e7

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/zte/aigc/vo/Result;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 36
    iget p0, p0, Lcom/zte/aigc/vo/Result;->code:I

    return p0
.end method

.method public getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/zte/aigc/vo/Result;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/zte/aigc/vo/Result;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/zte/aigc/vo/Result;->code:I

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/zte/aigc/vo/Result;->data:Ljava/lang/Object;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/zte/aigc/vo/Result;->message:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 61
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
