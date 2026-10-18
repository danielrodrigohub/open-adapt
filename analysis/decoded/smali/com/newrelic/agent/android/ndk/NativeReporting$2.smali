.class Lcom/newrelic/agent/android/ndk/NativeReporting$2;
.super Ljava/util/HashMap;
.source "NativeReporting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/agent/android/ndk/NativeReporting;->onNativeException(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/newrelic/agent/android/ndk/NativeReporting;


# direct methods
.method public constructor <init>(Lcom/newrelic/agent/android/ndk/NativeReporting;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/newrelic/agent/android/ndk/NativeReporting$2;->this$0:Lcom/newrelic/agent/android/ndk/NativeReporting;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "platform"

    const-string v0, "native"

    .line 2
    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "unhandledNativeException"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
