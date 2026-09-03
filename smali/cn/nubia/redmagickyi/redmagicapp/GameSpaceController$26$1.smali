.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;
.super Ljava/lang/Object;
.source "GameSpaceController.java"

# interfaces
.implements Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->onLoadSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinLoadResponse;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2219
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsClearModel(Z)V
    .locals 1

    .line 2298
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$4100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2299
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$4100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/RelativeLayout;

    move-result-object p0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public changeSkin(IZZ)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2225
    invoke-static {p1, p2, v0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkinWithChangeAnim(IZZ)Z

    move-result p3

    goto :goto_0

    .line 2227
    :cond_0
    invoke-static {p1, p2, v0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkin(IZZ)Z

    move-result p3

    .line 2229
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Z)V

    if-eqz p3, :cond_1

    .line 2231
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->stopPlayMotion()V

    .line 2232
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    move-result-object v0

    const/16 v1, 0xbbe

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->removeMessages(I)V

    .line 2233
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mChangeSkinMotionList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1

    .line 2234
    array-length v2, v0

    if-lez v2, :cond_1

    .line 2235
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    aget v0, v0, v2

    .line 2236
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 2237
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2238
    const-string v4, "mood_type"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2239
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2240
    iput v1, v2, Landroid/os/Message;->what:I

    .line 2241
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v2, v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    if-eqz p2, :cond_2

    .line 2244
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$DigitalHuman;->enable()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 2245
    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->changeSkin(IZ)Z

    .line 2247
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "changeSkin = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameSpaceActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p3
.end method

.method public go2Achievement()V
    .locals 0

    .line 2258
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->Achievement()V

    return-void
.end method

.method public onAnimationCallback(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 2320
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->showBackIcon()V

    .line 2322
    new-instance p1, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFocus;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFocus;-><init>()V

    const/16 p2, 0x3ee

    .line 2323
    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFocus;->setMsgID(I)V

    .line 2324
    const-string p2, "0X"

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFocus;->setScaleValue(Ljava/lang/String;)V

    .line 2325
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 2326
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->changeSkinModeBg(I)V

    :cond_0
    return-void
.end method

.method public onHideFragment()V
    .locals 3

    .line 2305
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->getGameSpaceBgId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->changeSkinModeBg(I)V

    .line 2307
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkin(IZZ)Z

    .line 2309
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object v2, v2, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    iget-object v2, v2, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->mContext:Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->getFocalLen(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$2700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Ljava/lang/String;)V

    .line 2310
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$4000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    .line 2311
    sput-boolean v1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnTouchable:Z

    .line 2313
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->stopPlayMotion()V

    .line 2314
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1700(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;Z)V

    return-void
.end method

.method public onModelNameClicked()V
    .locals 0

    .line 2263
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1300(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    return-void
.end method

.method public playExchangedAnimation(I)V
    .locals 5

    const/4 v0, 0x1

    .line 2268
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->isMediaPlaying(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2269
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    move-result-object v1

    const/16 v2, 0xbbe

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->removeMessages(I)V

    .line 2270
    sget-object v1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mChangeSkinMotionList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_0

    .line 2271
    array-length v1, p1

    if-lez v1, :cond_0

    .line 2272
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    aget p1, p1, v1

    .line 2273
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2274
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2275
    const-string v4, "mood_type"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2276
    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2277
    iput v2, v1, Landroid/os/Message;->what:I

    .line 2278
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2282
    :cond_0
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageExchangeSkin;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageExchangeSkin;-><init>()V

    const/16 p1, 0x3ff

    .line 2283
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageExchangeSkin;->setMsgID(I)V

    .line 2284
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageExchangeSkin;->setPlay(Z)V

    .line 2285
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method public stopExchangedAnimation()V
    .locals 1

    .line 2290
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageExchangeSkin;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageExchangeSkin;-><init>()V

    const/16 v0, 0x3ff

    .line 2291
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageExchangeSkin;->setMsgID(I)V

    const/4 v0, 0x0

    .line 2292
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageExchangeSkin;->setPlay(Z)V

    .line 2293
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method public stopPlayMotion()V
    .locals 0

    .line 2253
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$26;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->access$1600(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;)V

    return-void
.end method
