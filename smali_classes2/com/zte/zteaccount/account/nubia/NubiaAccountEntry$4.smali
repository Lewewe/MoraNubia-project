.class Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$4;
.super Lcom/google/gson/reflect/TypeToken;
.source "NubiaAccountEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->getAccessToken(Ljava/lang/String;)Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/zte/aigc/vo/Result<",
        "Lcom/zte/zteaccount/account/nubia/NubiaOAuthInfo;",
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

    .line 252
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$4;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
