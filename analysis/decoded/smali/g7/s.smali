.class public final Lg7/s;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg7/s$a;
    }
.end annotation


# direct methods
.method public static a(Le7/l;Lcom/google/gson/stream/JsonWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lh7/q;->V:Lh7/q$t;

    invoke-virtual {v0, p1, p0}, Lh7/q$t;->b(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
