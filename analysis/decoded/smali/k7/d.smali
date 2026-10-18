.class public final Lk7/d;
.super Ljava/lang/Object;
.source "SqlTypesSupport.java"


# static fields
.field public static final a:Z

.field public static final b:Lk7/a$a;

.field public static final c:Lk7/b$a;

.field public static final d:Lk7/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "java.sql.Date"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sput-boolean v0, Lk7/d;->a:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lk7/d$a;

    const-class v0, Ljava/sql/Date;

    .line 4
    new-instance v0, Lk7/d$b;

    const-class v0, Ljava/sql/Timestamp;

    .line 5
    sget-object v0, Lk7/a;->b:Lk7/a$a;

    sput-object v0, Lk7/d;->b:Lk7/a$a;

    .line 6
    sget-object v0, Lk7/b;->b:Lk7/b$a;

    sput-object v0, Lk7/d;->c:Lk7/b$a;

    .line 7
    sget-object v0, Lk7/c;->b:Lk7/c$a;

    sput-object v0, Lk7/d;->d:Lk7/c$a;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 8
    sput-object v0, Lk7/d;->b:Lk7/a$a;

    .line 9
    sput-object v0, Lk7/d;->c:Lk7/b$a;

    .line 10
    sput-object v0, Lk7/d;->d:Lk7/c$a;

    :goto_1
    return-void
.end method
