.class public final Lv4/a;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistParserFactory.java"

# interfaces
.implements Lv4/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lv4/f;Lv4/e;)Ll5/f0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv4/f;",
            "Lv4/e;",
            ")",
            "Ll5/f0$a<",
            "Lv4/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Lv4/h;

    invoke-direct {v0, p1, p2}, Lv4/h;-><init>(Lv4/f;Lv4/e;)V

    return-object v0
.end method

.method public final b()Ll5/f0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll5/f0$a<",
            "Lv4/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Lv4/h;

    invoke-direct {v0}, Lv4/h;-><init>()V

    return-object v0
.end method
