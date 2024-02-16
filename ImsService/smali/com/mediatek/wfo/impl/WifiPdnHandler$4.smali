.class Lcom/mediatek/wfo/impl/WifiPdnHandler$4;
.super Ljava/lang/Object;
.source "WifiPdnHandler.java"

# interfaces
.implements Landroid/net/TetheringManager$TetheringEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WifiPdnHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 1920
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$4;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffloadStatusChanged(I)V
    .locals 5
    .param p1, "status"    # I

    .line 1934
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$4;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fgetmIsWifiConnected(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1935
    return-void

    .line 1937
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1945
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$4;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v1, "Tethering state: started"

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1946
    goto :goto_0

    .line 1939
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$4;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v1, "Tethering state: stopped"

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1940
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$4;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v1, 0x4b8

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1941
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$4;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$mgetMwiRil(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    sget-object v2, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_PACKET_FORWARD:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    invoke-virtual {v2}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->ordinal()I

    move-result v2

    const-string v3, "none"

    const-string v4, "0"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWfcConfig(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1943
    nop

    .line 1950
    .end local v0    # "result":Landroid/os/Message;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTetheredInterfacesChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1924
    .local p1, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1925
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1926
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$4;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tethering interface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1927
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1929
    :cond_0
    return-void
.end method
