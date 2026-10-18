.class public final Lk7/c;
.super Le7/x;
.source "SqlTimestampTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le7/x<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lk7/c$a;


# instance fields
.field public final a:Le7/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/x<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk7/c$a;

    invoke-direct {v0}, Lk7/c$a;-><init>()V

    sput-object v0, Lk7/c;->b:Lk7/c$a;

    return-void
.end method

.method public constructor <init>(Le7/x;Lk7/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le7/x;-><init>()V

    .line 2
    iput-object p1, p0, Lk7/c;->a:Le7/x;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk7/c;->a:Le7/x;

    invoke-virtual {v0, p1}, Le7/x;->a(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final b(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/sql/Timestamp;

    .line 2
    iget-object v0, p0, Lk7/c;->a:Le7/x;

    invoke-virtual {v0, p1, p2}, Le7/x;->b(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
