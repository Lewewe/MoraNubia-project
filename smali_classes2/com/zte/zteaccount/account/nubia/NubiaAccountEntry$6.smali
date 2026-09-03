.class Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$6;
.super Lcom/google/gson/reflect/TypeToken;
.source "NubiaAccountEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->getNubiaUserInfo(Ljava/lang/String;)Lcom/zte/zteaccount/account/nubia/NubiaUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/zte/zteaccount/account/nubia/NubiaUCResult<",
        "Lcom/zte/zteaccount/account/nubia/NubiaUserInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$6;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
