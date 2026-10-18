.class public final Le3/o$c;
.super Ljava/lang/Object;
.source "SingletonConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le3/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public final b:Le3/b$a;

.field public final c:Ll3/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/g<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le3/o$c$a;


# direct methods
.method public constructor <init>(Ll3/g;Le3/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/g<",
            "Landroid/net/ConnectivityManager;",
            ">;",
            "Le3/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le3/o$c$a;

    invoke-direct {v0, p0}, Le3/o$c$a;-><init>(Le3/o$c;)V

    iput-object v0, p0, Le3/o$c;->d:Le3/o$c$a;

    .line 3
    iput-object p1, p0, Le3/o$c;->c:Ll3/g;

    .line 4
    iput-object p2, p0, Le3/o$c;->b:Le3/b$a;

    return-void
.end method
